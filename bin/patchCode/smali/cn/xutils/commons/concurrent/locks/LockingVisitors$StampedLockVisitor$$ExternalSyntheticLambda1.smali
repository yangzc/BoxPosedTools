.class public final synthetic Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/locks/StampedLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/locks/StampedLock;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-static {v0}, Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor;->$r8$lambda$WDjAOAlU2Ir3LOJ6aCypisWtMHk(Ljava/util/concurrent/locks/StampedLock;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method
