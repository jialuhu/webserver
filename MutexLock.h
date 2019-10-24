//
// Created by Jialu  Hu on 2019-08-01.
//

#ifndef TINY_WEB_MUTEXLOCK_H
#define TINY_WEB_MUTEXLOCK_H

#include <pthread.h>
#include <boost/noncopyable.hpp>
class Mutex : boost::noncopyable{
public:
    Mutex(){
        pthread_mutex_init(&mutex, NULL);
    }
    ~Mutex(){
        pthread_mutex_destroy(&mutex);
    }

    void  lock(){
        pthread_mutex_lock(&mutex);
    }

    void  unlock(){
        pthread_mutex_unlock(&mutex);
    }

    pthread_mutex_t* get_mutex(){
        return  &mutex;
    }

private:
    pthread_mutex_t mutex;
};

class MutexGround : boost::noncopyable{
public:
    explicit MutexGround(Mutex &mutex_) : mutex(mutex_){
        mutex.lock();
    }
    ~MutexGround(){
        mutex.unlock();
    }

private:
    Mutex &mutex;
};


#endif //TINY_WEB_MUTEXLOCK_H
