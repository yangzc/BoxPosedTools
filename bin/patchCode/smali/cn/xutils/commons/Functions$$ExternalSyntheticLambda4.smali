.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableBooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailablePredicate;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailablePredicate;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda4;->f$0:Lcn/xutils/commons/Functions$FailablePredicate;

    iput-object p2, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda4;->f$0:Lcn/xutils/commons/Functions$FailablePredicate;

    iget-object v1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/xutils/commons/Functions;->lambda$test$14(Lcn/xutils/commons/Functions$FailablePredicate;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method