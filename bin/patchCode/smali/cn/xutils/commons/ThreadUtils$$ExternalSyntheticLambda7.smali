.class public final synthetic Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/ThreadUtils$ThreadGroupPredicate;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/ThreadUtils$ThreadGroupPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda7;->f$0:Lcn/xutils/commons/ThreadUtils$ThreadGroupPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda7;->f$0:Lcn/xutils/commons/ThreadUtils$ThreadGroupPredicate;

    check-cast p1, Ljava/lang/ThreadGroup;

    invoke-interface {v0, p1}, Lcn/xutils/commons/ThreadUtils$ThreadGroupPredicate;->test(Ljava/lang/ThreadGroup;)Z

    move-result p1

    return p1
.end method
