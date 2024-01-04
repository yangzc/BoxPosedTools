.class public Lcn/xutils/commons/time/DurationUtils;
.super Ljava/lang/Object;
.source "DurationUtils.java"


# static fields
.field static final LONG_TO_INT_RANGE:Lcn/xutils/commons/LongRange;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-object v0, Lcn/xutils/commons/math/NumberUtils;->LONG_INT_MIN_VALUE:Ljava/lang/Long;

    sget-object v1, Lcn/xutils/commons/math/NumberUtils;->LONG_INT_MAX_VALUE:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcn/xutils/commons/LongRange;->of(Ljava/lang/Long;Ljava/lang/Long;)Lcn/xutils/commons/LongRange;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DurationUtils;->LONG_TO_INT_RANGE:Lcn/xutils/commons/LongRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lcn/xutils/commons/function/FailableBiConsumer;Ljava/time/Duration;)V
    .locals 2
    .param p1, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableBiConsumer<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "TT;>;",
            "Ljava/time/Duration;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    .local p0, "consumer":Lcn/xutils/commons/function/FailableBiConsumer;, "Lcn/xutils/commons/function/FailableBiConsumer<Ljava/lang/Long;Ljava/lang/Integer;TT;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Lcn/xutils/commons/time/DurationUtils;->getNanosOfMilli(Ljava/time/Duration;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcn/xutils/commons/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static getNanosOfMiili(Ljava/time/Duration;)I
    .locals 1
    .param p0, "duration"    # Ljava/time/Duration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-static {p0}, Lcn/xutils/commons/time/DurationUtils;->getNanosOfMilli(Ljava/time/Duration;)I

    move-result v0

    return v0
.end method

.method public static getNanosOfMilli(Ljava/time/Duration;)I
    .locals 2
    .param p0, "duration"    # Ljava/time/Duration;

    .line 96
    invoke-static {p0}, Lcn/xutils/commons/time/DurationUtils;->zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->getNano()I

    move-result v0

    const v1, 0xf4240

    rem-int/2addr v0, v1

    return v0
.end method

.method public static isPositive(Ljava/time/Duration;)Z
    .locals 1
    .param p0, "duration"    # Ljava/time/Duration;

    .line 106
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/time/Duration;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$of$0(Lcn/xutils/commons/function/FailableRunnable;Ljava/time/Instant;)V
    .locals 0
    .param p0, "runnable"    # Lcn/xutils/commons/function/FailableRunnable;
    .param p1, "start"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 132
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableRunnable;->run()V

    return-void
.end method

.method private static now(Lcn/xutils/commons/function/FailableConsumer;)Ljava/time/Instant;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableConsumer<",
            "Ljava/time/Instant;",
            "TE;>;)",
            "Ljava/time/Instant;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    .local p0, "nowConsumer":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<Ljava/time/Instant;TE;>;"
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 137
    .local v0, "start":Ljava/time/Instant;
    invoke-interface {p0, v0}, Lcn/xutils/commons/function/FailableConsumer;->accept(Ljava/lang/Object;)V

    .line 138
    return-object v0
.end method

.method public static of(Lcn/xutils/commons/function/FailableConsumer;)Ljava/time/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableConsumer<",
            "Ljava/time/Instant;",
            "TE;>;)",
            "Ljava/time/Duration;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    .local p0, "consumer":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<Ljava/time/Instant;TE;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/xutils/commons/time/DurationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/xutils/commons/time/DurationUtils$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableConsumer;)V

    invoke-static {v0}, Lcn/xutils/commons/time/DurationUtils;->now(Lcn/xutils/commons/function/FailableConsumer;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/time/DurationUtils;->since(Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcn/xutils/commons/function/FailableRunnable;)Ljava/time/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableRunnable<",
            "TE;>;)",
            "Ljava/time/Duration;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 132
    .local p0, "runnable":Lcn/xutils/commons/function/FailableRunnable;, "Lcn/xutils/commons/function/FailableRunnable<TE;>;"
    new-instance v0, Lcn/xutils/commons/time/DurationUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/xutils/commons/time/DurationUtils$$ExternalSyntheticLambda1;-><init>(Lcn/xutils/commons/function/FailableRunnable;)V

    invoke-static {v0}, Lcn/xutils/commons/time/DurationUtils;->of(Lcn/xutils/commons/function/FailableConsumer;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static since(Ljava/time/temporal/Temporal;)Ljava/time/Duration;
    .locals 1
    .param p0, "startInclusive"    # Ljava/time/temporal/Temporal;

    .line 149
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method static toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;
    .locals 2
    .param p0, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 160
    sget-object v0, Lcn/xutils/commons/time/DurationUtils$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_0
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 172
    :pswitch_1
    sget-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 170
    :pswitch_2
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 168
    :pswitch_3
    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 166
    :pswitch_4
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 164
    :pswitch_5
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 162
    :pswitch_6
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toDuration(JLjava/util/concurrent/TimeUnit;)Ljava/time/Duration;
    .locals 1
    .param p0, "amount"    # J
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 188
    invoke-static {p2}, Lcn/xutils/commons/time/DurationUtils;->toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static toMillisInt(Ljava/time/Duration;)I
    .locals 3
    .param p0, "duration"    # Ljava/time/Duration;

    .line 207
    const-string v0, "duration"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcn/xutils/commons/time/DurationUtils;->LONG_TO_INT_RANGE:Lcn/xutils/commons/LongRange;

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xutils/commons/LongRange;->fit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public static zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 1
    .param p0, "duration"    # Ljava/time/Duration;

    .line 219
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-static {p0, v0}, Lcn/xutils/commons/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    return-object v0
.end method
