.class public final synthetic Lcn/xutils/commons/Streams$ArrayCollector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Streams$ArrayCollector;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Streams$ArrayCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Streams$ArrayCollector$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/Streams$ArrayCollector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/Streams$ArrayCollector$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/Streams$ArrayCollector;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcn/xutils/commons/Streams$ArrayCollector;->lambda$finisher$1$cn-xutils-commons-Streams$ArrayCollector(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
