from celery.task import task, Task


@task(name='MoveToQueueTask', base=Task, queue='differences', ignore_result=True, bind=True)
def move_to_queue_task(*args, **kwargs):
    pass
