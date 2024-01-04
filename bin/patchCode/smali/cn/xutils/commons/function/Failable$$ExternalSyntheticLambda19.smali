.class public final synthetic Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableRunnable;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableLongConsumer;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableLongConsumer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda19;->f$0:Lcn/xutils/commons/function/FailableLongConsumer;

    iput-wide p2, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda19;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda19;->f$0:Lcn/xutils/commons/function/FailableLongConsumer;

    iget-wide v1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda19;->f$1:J

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/function/Failable;->lambda$accept$4(Lcn/xutils/commons/function/FailableLongConsumer;J)V

    return-void
.end method
