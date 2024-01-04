.class public final synthetic Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableBiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Thread;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Thread;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcn/xutils/commons/ThreadUtils;->$r8$lambda$RTJlbKQsoJd2zG1tpRk0jrJpuKg(Ljava/lang/Thread;JI)V

    return-void
.end method
