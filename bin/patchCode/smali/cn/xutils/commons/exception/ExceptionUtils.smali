.class public Lcn/xutils/commons/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final CAUSE_METHOD_NAMES:[Ljava/lang/String;

.field private static final NOT_FOUND:I = -0x1

.field static final WRAPPED_MARKER:Ljava/lang/String; = " [wrapped] "


# direct methods
.method public static synthetic $r8$lambda$DoIYq_FMz30pG7A-DI6va0pYfdw(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZVOpn5t87aBW9JUn3hjwFTw4RwU(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vN7Wu77WNgkSv-pxg-AAu7TIWhc(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 49
    const-string v0, "getCause"

    const-string v1, "getNextException"

    const-string v2, "getTargetException"

    const-string v3, "getException"

    const-string v4, "getSourceException"

    const-string v5, "getRootCause"

    const-string v6, "getCausedByException"

    const-string v7, "getNested"

    const-string v8, "getLinkedException"

    const-string v9, "getNestedException"

    const-string v10, "getLinkedCause"

    const-string v11, "getThrowable"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    return-void
.end method

.method private static eraseType(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TR;^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 82
    throw p0
.end method

.method public static forEach(Ljava/lang/Throwable;Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Throwable;>;"
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->stream(Ljava/lang/Throwable;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 103
    return-void
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodNames"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 154
    return-object v0

    .line 156
    :cond_0
    if-nez p1, :cond_2

    .line 157
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 158
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 159
    return-object v1

    .line 161
    :cond_1
    sget-object p1, Lcn/xutils/commons/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 163
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_2
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 183
    :goto_0
    if-eqz v0, :cond_0

    const-class v2, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    .line 186
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    .line 191
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultCauseMethodNames()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    sget-object v0, Lcn/xutils/commons/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "th"    # Ljava/lang/Throwable;

    .line 220
    if-nez p0, :cond_0

    .line 221
    const-string v0, ""

    return-object v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/ClassUtils;->getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "clsName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/xutils/commons/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 245
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :goto_0
    return-object v1
.end method

.method public static getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 261
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 262
    .local v0, "root":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lcn/xutils/commons/exception/ExceptionUtils;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 279
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getRootCauseStackTraceList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getRootCauseStackTraceList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    if-nez p0, :cond_0

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v0

    .line 299
    .local v0, "throwables":[Ljava/lang/Throwable;
    array-length v1, v0

    .line 300
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v2, "frames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lcn/xutils/commons/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 302
    .local v3, "nextTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v4, v1

    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 303
    move-object v5, v3

    .line 304
    .local v5, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 305
    add-int/lit8 v6, v4, -0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Lcn/xutils/commons/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 306
    invoke-static {v5, v3}, Lcn/xutils/commons/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    .line 308
    :cond_1
    add-int/lit8 v6, v1, -0x1

    if-ne v4, v6, :cond_2

    .line 309
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [wrapped] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    :goto_1
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    .end local v5    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 315
    .end local v4    # "i":I
    :cond_3
    return-object v2
.end method

.method static getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "stackTrace":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "linebreak":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v2, "frames":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 336
    .local v4, "traceStarted":Z
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 337
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "token":Ljava/lang/String;
    const-string v6, "at"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 340
    .local v6, "at":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    const/4 v4, 0x1

    .line 342
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_0
    if-eqz v4, :cond_1

    .line 344
    goto :goto_2

    .line 346
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "at":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 347
    :cond_2
    :goto_2
    return-object v3
.end method

.method static getStackFrames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "stackTrace"    # Ljava/lang/String;

    .line 359
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "linebreak":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v1, "frames":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_0
    sget-object v3, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 382
    if-nez p0, :cond_0

    .line 383
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 385
    :cond_0
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 401
    if-nez p0, :cond_0

    .line 402
    const-string v0, ""

    return-object v0

    .line 404
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 405
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 406
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getThrowableCount(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 426
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 454
    :cond_0
    return-object v0
.end method

.method public static getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 477
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    return-object v0
.end method

.method public static hasCause(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "chain"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .line 495
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    instance-of v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 498
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .param p3, "subclass"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;IZ)I"
        }
    .end annotation

    .line 513
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v0, -0x1

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto :goto_3

    .line 516
    :cond_0
    if-gez p2, :cond_1

    .line 517
    const/4 p2, 0x0

    .line 519
    :cond_1
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v1

    .line 520
    .local v1, "throwables":[Ljava/lang/Throwable;
    array-length v2, v1

    if-lt p2, v2, :cond_2

    .line 521
    return v0

    .line 523
    :cond_2
    if-eqz p3, :cond_5

    .line 524
    move v2, p2

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 525
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 526
    return v2

    .line 524
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_4
    goto :goto_2

    .line 530
    :cond_5
    move v2, p2

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 531
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 532
    return v2

    .line 530
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 536
    .end local v2    # "i":I
    :cond_7
    :goto_2
    return v0

    .line 514
    .end local v1    # "throwables":[Ljava/lang/Throwable;
    :cond_8
    :goto_3
    return v0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)I"
        }
    .end annotation

    .line 554
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcn/xutils/commons/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;I)I"
        }
    .end annotation

    .line 577
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)I"
        }
    .end annotation

    .line 596
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;I)I"
        }
    .end annotation

    .line 620
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static isChecked(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 632
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnchecked(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 644
    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getCause$0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "m"    # Ljava/lang/String;

    .line 163
    invoke-static {p0, p1}, Lcn/xutils/commons/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 666
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcn/xutils/commons/exception/ExceptionUtils;->printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 667
    return-void
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "printStream"    # Ljava/io/PrintStream;

    .line 690
    if-nez p0, :cond_0

    .line 691
    return-void

    .line 693
    :cond_0
    const-string v0, "printStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 694
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getRootCauseStackTraceList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 695
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 696
    return-void
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 719
    if-nez p0, :cond_0

    .line 720
    return-void

    .line 722
    :cond_0
    const-string v0, "printWriter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 723
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getRootCauseStackTraceList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 724
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 725
    return-void
.end method

.method public static removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 736
    .local p0, "causeFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "wrapperFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "causeFrames"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 737
    const-string v0, "wrapperFrames"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 738
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 739
    .local v0, "causeFrameIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 740
    .local v1, "wrapperFrameIndex":I
    :goto_0
    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 743
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 744
    .local v2, "causeFrame":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 745
    .local v3, "wrapperFrame":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 746
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 748
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 749
    nop

    .end local v2    # "causeFrame":Ljava/lang/String;
    .end local v3    # "wrapperFrame":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    .line 750
    goto :goto_0

    .line 751
    :cond_1
    return-void
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TR;"
        }
    .end annotation

    .line 813
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->eraseType(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static stream(Ljava/lang/Throwable;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 835
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static throwUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 977
    .local p0, "throwable":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 980
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_0

    .line 983
    return-object p0

    .line 981
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 978
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method private static throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .param p3, "subclass"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;IZ)TT;"
        }
    .end annotation

    .line 851
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto :goto_3

    .line 854
    :cond_0
    if-gez p2, :cond_1

    .line 855
    const/4 p2, 0x0

    .line 857
    :cond_1
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v1

    .line 858
    .local v1, "throwables":[Ljava/lang/Throwable;
    array-length v2, v1

    if-lt p2, v2, :cond_2

    .line 859
    return-object v0

    .line 861
    :cond_2
    if-eqz p3, :cond_5

    .line 862
    move v2, p2

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 863
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 864
    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 862
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_4
    goto :goto_2

    .line 868
    :cond_5
    move v2, p2

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 869
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 870
    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 868
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 874
    .end local v2    # "i":I
    :cond_7
    :goto_2
    return-object v0

    .line 852
    .end local v1    # "throwables":[Ljava/lang/Throwable;
    :cond_8
    :goto_3
    return-object v0
.end method

.method public static throwableOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 894
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcn/xutils/commons/exception/ExceptionUtils;->throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static throwableOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 919
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/exception/ExceptionUtils;->throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static throwableOfType(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 939
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/exception/ExceptionUtils;->throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static throwableOfType(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 964
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/exception/ExceptionUtils;->throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static wrapAndThrow(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TR;"
        }
    .end annotation

    .line 1009
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->throwUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
