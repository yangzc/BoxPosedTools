.class public final synthetic Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/locks/ReadWriteLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method
