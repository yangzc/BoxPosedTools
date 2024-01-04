.class public Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor;
.super Lcn/xutils/commons/concurrent/locks/LockingVisitors$LockVisitor;
.source "LockingVisitors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/locks/LockingVisitors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StampedLockVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/xutils/commons/concurrent/locks/LockingVisitors$LockVisitor<",
        "TO;",
        "Ljava/util/concurrent/locks/StampedLock;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$SV-W48So9xSRCsnt7LI6wgUjYfs(Ljava/util/concurrent/locks/StampedLock;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->asReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WDjAOAlU2Ir3LOJ6aCypisWtMHk(Ljava/util/concurrent/locks/StampedLock;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->asWriteLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/locks/StampedLock;)V
    .locals 2
    .param p2, "stampedLock"    # Ljava/util/concurrent/locks/StampedLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/util/concurrent/locks/StampedLock;",
            ")V"
        }
    .end annotation

    .line 347
    .local p0, "this":Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor;, "Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor<TO;>;"
    .local p1, "object":Ljava/lang/Object;, "TO;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcn/xutils/commons/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/xutils/commons/concurrent/locks/LockingVisitors$LockVisitor;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 348
    return-void
.end method
