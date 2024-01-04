.class public final synthetic Lcn/xutils/commons/function/TriConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/TriConsumer;

.field public final synthetic f$1:Lcn/xutils/commons/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/TriConsumer;Lcn/xutils/commons/function/TriConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/TriConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/TriConsumer;

    iput-object p2, p0, Lcn/xutils/commons/function/TriConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/TriConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/TriConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/TriConsumer;

    iget-object v1, p0, Lcn/xutils/commons/function/TriConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/TriConsumer;

    invoke-static {v0, v1, p1, p2, p3}, Lcn/xutils/commons/function/TriConsumer;->lambda$andThen$0(Lcn/xutils/commons/function/TriConsumer;Lcn/xutils/commons/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
