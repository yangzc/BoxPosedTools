.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/Functions$FailableRunnable;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailableBiConsumer;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda5;->f$0:Lcn/xutils/commons/Functions$FailableBiConsumer;

    iput-object p2, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda5;->f$0:Lcn/xutils/commons/Functions$FailableBiConsumer;

    iget-object v1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/Functions;->lambda$accept$0(Lcn/xutils/commons/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
