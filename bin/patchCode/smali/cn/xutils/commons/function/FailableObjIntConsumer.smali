.class public interface abstract Lcn/xutils/commons/function/FailableObjIntConsumer;
.super Ljava/lang/Object;
.source "FailableObjIntConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lcn/xutils/commons/function/FailableObjIntConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcn/xutils/commons/function/FailableObjIntConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableObjIntConsumer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableObjIntConsumer;->NOP:Lcn/xutils/commons/function/FailableObjIntConsumer;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "u"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public static nop()Lcn/xutils/commons/function/FailableObjIntConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableObjIntConsumer<",
            "TT;TE;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcn/xutils/commons/function/FailableObjIntConsumer;->NOP:Lcn/xutils/commons/function/FailableObjIntConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method