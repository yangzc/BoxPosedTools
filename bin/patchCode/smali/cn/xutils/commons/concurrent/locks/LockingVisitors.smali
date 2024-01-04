.class public Lcn/xutils/commons/concurrent/locks/LockingVisitors;
.super Ljava/lang/Object;
.source "LockingVisitors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;,
        Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor;,
        Lcn/xutils/commons/concurrent/locks/LockingVisitors$LockVisitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/util/concurrent/locks/ReadWriteLock;)Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;
    .locals 1
    .param p1, "readWriteLock"    # Ljava/util/concurrent/locks/ReadWriteLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ")",
            "Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor<",
            "TO;>;"
        }
    .end annotation

    .line 361
    .local p0, "object":Ljava/lang/Object;, "TO;"
    new-instance v0, Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;-><init>(Ljava/lang/Object;Ljava/util/concurrent/locks/ReadWriteLock;)V

    return-object v0
.end method

.method public static reentrantReadWriteLockVisitor(Ljava/lang/Object;)Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;)",
            "Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor<",
            "TO;>;"
        }
    .end annotation

    .line 372
    .local p0, "object":Ljava/lang/Object;, "TO;"
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-static {p0, v0}, Lcn/xutils/commons/concurrent/locks/LockingVisitors;->create(Ljava/lang/Object;Ljava/util/concurrent/locks/ReadWriteLock;)Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static stampedLockVisitor(Ljava/lang/Object;)Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;)",
            "Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor<",
            "TO;>;"
        }
    .end annotation

    .line 383
    .local p0, "object":Ljava/lang/Object;, "TO;"
    new-instance v0, Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor;

    new-instance v1, Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/StampedLock;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor;-><init>(Ljava/lang/Object;Ljava/util/concurrent/locks/StampedLock;)V

    return-object v0
.end method
