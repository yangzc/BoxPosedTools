.class public final synthetic Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/ThreadUtils$ThreadPredicate;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/ThreadUtils$ThreadPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/ThreadUtils$ThreadPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/ThreadUtils$ThreadPredicate;

    check-cast p1, Ljava/lang/Thread;

    invoke-interface {v0, p1}, Lcn/xutils/commons/ThreadUtils$ThreadPredicate;->test(Ljava/lang/Thread;)Z

    move-result p1

    return p1
.end method
