.class public interface abstract Lcn/xutils/commons/function/FailableToIntBiFunction;
.super Ljava/lang/Object;
.source "FailableToIntBiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
.field public static final NOP:Lcn/xutils/commons/function/FailableToIntBiFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcn/xutils/commons/function/FailableToIntBiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableToIntBiFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableToIntBiFunction;->NOP:Lcn/xutils/commons/function/FailableToIntBiFunction;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableToIntBiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableToIntBiFunction<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcn/xutils/commons/function/FailableToIntBiFunction;->NOP:Lcn/xutils/commons/function/FailableToIntBiFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
