.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailableBiFunction;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailableBiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/Functions$FailableBiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/Functions$FailableBiFunction;

    invoke-static {v0, p1, p2}, Lcn/xutils/commons/Functions;->lambda$asBiFunction$5(Lcn/xutils/commons/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
