.class public final synthetic Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableBiPredicate;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableBiPredicate;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableBiPredicate;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableBiPredicate;Lcn/xutils/commons/function/FailableBiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda4;->f$0:Lcn/xutils/commons/function/FailableBiPredicate;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda4;->f$1:Lcn/xutils/commons/function/FailableBiPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda4;->f$0:Lcn/xutils/commons/function/FailableBiPredicate;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda4;->f$1:Lcn/xutils/commons/function/FailableBiPredicate;

    invoke-static {v0, v1, p1, p2}, Lcn/xutils/commons/function/FailableBiPredicate;->lambda$and$2(Lcn/xutils/commons/function/FailableBiPredicate;Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
