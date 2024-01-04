.class public final synthetic Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcn/xutils/commons/concurrent/BackgroundInitializer;

    invoke-static {v0, v1, p1, p2}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;->lambda$initialize$1(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcn/xutils/commons/concurrent/BackgroundInitializer;)V

    return-void
.end method
