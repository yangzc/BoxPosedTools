.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailableBiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailableBiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda17;->f$0:Lcn/xutils/commons/Functions$FailableBiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda17;->f$0:Lcn/xutils/commons/Functions$FailableBiConsumer;

    invoke-static {v0, p1, p2}, Lcn/xutils/commons/Functions;->lambda$asBiConsumer$4(Lcn/xutils/commons/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
