.class public Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;
.super Lcn/xutils/commons/concurrent/locks/LockingVisitors$LockVisitor;
.source "LockingVisitors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/locks/LockingVisitors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadWriteLockVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/xutils/commons/concurrent/locks/LockingVisitors$LockVisitor<",
        "TO;",
        "Ljava/util/concurrent/locks/ReadWriteLock;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/locks/ReadWriteLock;)V
    .locals 2
    .param p2, "readWriteLock"    # Ljava/util/concurrent/locks/ReadWriteLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ")V"
        }
    .end annotation

    .line 324
    .local p0, "this":Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;, "Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor<TO;>;"
    .local p1, "object":Ljava/lang/Object;, "TO;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/locks/ReadWriteLock;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/locks/ReadWriteLock;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/xutils/commons/concurrent/locks/LockingVisitors$LockVisitor;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 325
    return-void
.end method
