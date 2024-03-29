using System.Collections;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Bordeaux.BordeauxScripts
{
    public class EnemyFlying : MonoBehaviour
    {
        private Transform player;
        public float moveSpeed = 5f;
        public float stoppingDistance = 5f;
        public float verticalDistance = 10f;
        public float horizontalDistance = 10f;

        private Rigidbody rb;
        private bool canAttack = true;
        private EnemyManager enemyManager;

        [SerializeField] private GameObject ball;
    
        [SerializeField] private float minAttackCooldown = 2;
        [SerializeField] private float maxAttackCooldown = 3;
        
        public GameObject projectilePrefab;
        public Transform shootingPoint;
    
        void Start()
        {
            enemyManager = GameObject.FindWithTag("EnemyManager").GetComponent<EnemyManager>();
            player = GameObject.FindWithTag("Player").transform;
        
            rb = GetComponent<Rigidbody>();
        }

        void Update()
        {
            if (canAttack && player != null)
            {
                Vector3 direction = player.position - transform.position;
                Quaternion rotation = Quaternion.LookRotation(direction);
                transform.rotation = Quaternion.Lerp(transform.rotation, rotation, Time.deltaTime * 5f);
            
            
                Vector3 targetPosition = player.position + new Vector3(0, verticalDistance, horizontalDistance);
                Vector3 moveDirection = (targetPosition - transform.position).normalized;

                float distanceToPlayer = Vector3.Distance(transform.position, targetPosition);

                if (distanceToPlayer > stoppingDistance)
                {
                    rb.MovePosition(transform.position + moveDirection * moveSpeed * Time.fixedDeltaTime);
                }
                else
                {
                    rb.velocity = Vector3.zero;
                    RequestAttack();
                }
            }
        }
    
        void RequestAttack()
        {
            if (enemyManager.RequestToken())
            {
                Attack();
            }
            else
            {
                // EndAttack();
            }
        }

        void Attack()
        {
            canAttack = false;
            Instantiate(ball, transform.position, Quaternion.identity);
            Shoot();
            StartCoroutine(EndAttack());
        }

        void Shoot()
        {
            if(projectilePrefab && shootingPoint)
            {
                // Calculate the rotation to look at player
                Vector3 direction = (player.position - shootingPoint.position).normalized;
                Quaternion rotation = Quaternion.LookRotation(direction);

                // instantiate or create bullet with turret's rotation
                Instantiate(projectilePrefab, shootingPoint.position, rotation);
            }
        }
        private IEnumerator EndAttack()
        {
            //todo random interval
            yield return new WaitForSeconds(Random.Range(minAttackCooldown, maxAttackCooldown));
            enemyManager.ReturnToken();
            canAttack = true;
        }

        // public void OnDrawGizmos()
        // {
        //     if (!Application.isPlaying) { return;}
        //     
        //     if (canAttack)
        //     {
        //         Gizmos.color = Color.blue;
        //         Gizmos.DrawSphere(transform.position, 2);
        //     }
        //     else
        //     {
        //         Gizmos.color = Color.red;
        //         Gizmos.DrawSphere(transform.position, 2);
        //     }
        // }
    }
}