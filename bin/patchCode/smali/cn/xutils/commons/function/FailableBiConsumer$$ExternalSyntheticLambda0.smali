.class public final synthetic Lcn/xutils/commons/function/FailableBiConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableBiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableBiConsumer;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableBiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableBiConsumer;Lcn/xutils/commons/function/FailableBiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableBiConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableBiConsumer;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableBiConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableBiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableBiConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableBiConsumer;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableBiConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableBiConsumer;

    invoke-static {v0, v1, p1, p2}, Lcn/xutils/commons/function/FailableBiConsumer;->lambda$andThen$1(Lcn/xutils/commons/function/FailableBiConsumer;Lcn/xutils/commons/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
