.class public final synthetic Lcn/xutils/commons/function/FailablePredicate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailablePredicate;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailablePredicate;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailablePredicate;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailablePredicate;Lcn/xutils/commons/function/FailablePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailablePredicate$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/function/FailablePredicate;

    iput-object p2, p0, Lcn/xutils/commons/function/FailablePredicate$$ExternalSyntheticLambda2;->f$1:Lcn/xutils/commons/function/FailablePredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailablePredicate$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/function/FailablePredicate;

    iget-object v1, p0, Lcn/xutils/commons/function/FailablePredicate$$ExternalSyntheticLambda2;->f$1:Lcn/xutils/commons/function/FailablePredicate;

    invoke-static {v0, v1, p1}, Lcn/xutils/commons/function/FailablePredicate;->lambda$and$2(Lcn/xutils/commons/function/FailablePredicate;Lcn/xutils/commons/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
