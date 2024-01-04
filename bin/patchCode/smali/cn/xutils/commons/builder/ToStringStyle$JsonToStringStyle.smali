.class final Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;
.super Lcn/xutils/commons/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JsonToStringStyle"
.end annotation


# static fields
.field private static final FIELD_NAME_QUOTE:Ljava/lang/String; = "\""

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2253
    invoke-direct {p0}, Lcn/xutils/commons/builder/ToStringStyle;-><init>()V

    .line 2254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setUseClassName(Z)V

    .line 2255
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2257
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2258
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 2260
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setArrayStart(Ljava/lang/String;)V

    .line 2261
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setArrayEnd(Ljava/lang/String;)V

    .line 2263
    const-string v0, ","

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 2264
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setFieldNameValueSeparator(Ljava/lang/String;)V

    .line 2266
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setNullText(Ljava/lang/String;)V

    .line 2268
    const-string v0, "\"<"

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setSummaryObjectStartText(Ljava/lang/String;)V

    .line 2269
    const-string v0, ">\""

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setSummaryObjectEndText(Ljava/lang/String;)V

    .line 2271
    const-string v1, "\"<size="

    invoke-virtual {p0, v1}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setSizeStartText(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->setSizeEndText(Ljava/lang/String;)V

    .line 2273
    return-void
.end method

.method private appendValueAsString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/String;

    .line 2530
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcn/xutils/commons/StringEscapeUtils;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2531
    return-void
.end method

.method private isJsonArray(Ljava/lang/String;)Z
    .locals 1
    .param p1, "valueAsString"    # Ljava/lang/String;

    .line 2514
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->getArrayStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2515
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->getArrayEnd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2514
    :goto_0
    return v0
.end method

.method private isJsonObject(Ljava/lang/String;)Z
    .locals 1
    .param p1, "valueAsString"    # Ljava/lang/String;

    .line 2519
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->getContentStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2520
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->getContentEnd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2519
    :goto_0
    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2551
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->JSON_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2423
    if-eqz p2, :cond_1

    .line 2427
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2432
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 2433
    return-void

    .line 2428
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2424
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2343
    if-eqz p2, :cond_1

    .line 2347
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 2353
    return-void

    .line 2348
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2344
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2359
    if-eqz p2, :cond_1

    .line 2363
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2368
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 2369
    return-void

    .line 2364
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2360
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2375
    if-eqz p2, :cond_1

    .line 2379
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2384
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 2385
    return-void

    .line 2380
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2376
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2391
    if-eqz p2, :cond_1

    .line 2395
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2400
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 2401
    return-void

    .line 2396
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2392
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2311
    if-eqz p2, :cond_1

    .line 2315
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2320
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 2321
    return-void

    .line 2316
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2312
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2295
    if-eqz p2, :cond_1

    .line 2299
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2304
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 2305
    return-void

    .line 2300
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2296
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2279
    if-eqz p2, :cond_1

    .line 2283
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2288
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 2289
    return-void

    .line 2284
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2280
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2327
    if-eqz p2, :cond_1

    .line 2331
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2336
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 2337
    return-void

    .line 2332
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2328
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 2407
    if-eqz p2, :cond_1

    .line 2411
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2416
    invoke-super {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 2417
    return-void

    .line 2412
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2408
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 2437
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->appendValueAsString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2438
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 2443
    if-nez p3, :cond_0

    .line 2444
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2445
    return-void

    .line 2448
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_6

    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 2453
    :cond_1
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_5

    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2458
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2459
    .local v0, "valueAsString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isJsonObject(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->isJsonArray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2464
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2465
    return-void

    .line 2460
    :cond_4
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2461
    return-void

    .line 2454
    .end local v0    # "valueAsString":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2455
    return-void

    .line 2449
    :cond_6
    :goto_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->appendValueAsString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2450
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 2469
    .local p3, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2470
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->getArrayStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2471
    const/4 v0, 0x0

    .line 2472
    .local v0, "i":I
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2473
    .local v2, "item":Ljava/lang/Object;
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, p1, p2, v0, v2}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2474
    .end local v2    # "item":Ljava/lang/Object;
    move v0, v3

    goto :goto_0

    .line 2475
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->getArrayEnd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2476
    return-void

    .line 2479
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2480
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 2484
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2485
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->getContentStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2487
    const/4 v0, 0x1

    .line 2488
    .local v0, "firstItem":Z
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2489
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2490
    .local v3, "keyStr":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2491
    if-eqz v0, :cond_0

    .line 2492
    const/4 v0, 0x0

    goto :goto_1

    .line 2494
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2496
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2497
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 2498
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 2499
    invoke-virtual {p0, p1, v3}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_2

    .line 2501
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v3, v4, v5}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2504
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "keyStr":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    :goto_2
    goto :goto_0

    .line 2506
    :cond_3
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;->getContentEnd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2507
    return-void

    .line 2510
    .end local v0    # "firstItem":Z
    :cond_4
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2511
    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 2536
    if-eqz p2, :cond_0

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcn/xutils/commons/StringEscapeUtils;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2543
    return-void

    .line 2537
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
