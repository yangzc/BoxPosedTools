.class public interface abstract Lcn/xutils/commons/function/FailableLongToIntFunction;
.super Ljava/lang/Object;
.source "FailableLongToIntFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lcn/xutils/commons/function/FailableLongToIntFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/xutils/commons/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableLongToIntFunction;->NOP:Lcn/xutils/commons/function/FailableLongToIntFunction;

    return-void
.end method

.method public static synthetic lambda$static$0(J)I
    .locals 1
    .param p0, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableLongToIntFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableLongToIntFunction<",
            "TE;>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcn/xutils/commons/function/FailableLongToIntFunction;->NOP:Lcn/xutils/commons/function/FailableLongToIntFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsInt(J)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
