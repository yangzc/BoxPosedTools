.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableBooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailableBiPredicate;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda8;->f$0:Lcn/xutils/commons/Functions$FailableBiPredicate;

    iput-object p2, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 3

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda8;->f$0:Lcn/xutils/commons/Functions$FailableBiPredicate;

    iget-object v1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/Functions;->lambda$test$13(Lcn/xutils/commons/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method