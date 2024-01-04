.class public final synthetic Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableBiPredicate;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableBiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda5;->f$0:Lcn/xutils/commons/function/FailableBiPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda5;->f$0:Lcn/xutils/commons/function/FailableBiPredicate;

    invoke-static {v0, p1, p2}, Lcn/xutils/commons/function/Failable;->lambda$asBiPredicate$10(Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
