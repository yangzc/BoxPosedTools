.class public Lcn/xutils/commons/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lcn/xutils/commons/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lcn/xutils/commons/text/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lcn/xutils/commons/text/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lcn/xutils/commons/text/StrMatcher;

.field private preserveEscapes:Z

.field private suffixMatcher:Lcn/xutils/commons/text/StrMatcher;

.field private valueDelimiterMatcher:Lcn/xutils/commons/text/StrMatcher;

.field private variableResolver:Lcn/xutils/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/xutils/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    const-string v0, "${"

    invoke-static {v0}, Lcn/xutils/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lcn/xutils/commons/text/StrMatcher;

    .line 162
    const-string v0, "}"

    invoke-static {v0}, Lcn/xutils/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lcn/xutils/commons/text/StrMatcher;

    .line 167
    const-string v0, ":-"

    invoke-static {v0}, Lcn/xutils/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lcn/xutils/commons/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 266
    sget-object v0, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lcn/xutils/commons/text/StrMatcher;

    sget-object v1, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lcn/xutils/commons/text/StrMatcher;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Lcn/xutils/commons/text/StrLookup;Lcn/xutils/commons/text/StrMatcher;Lcn/xutils/commons/text/StrMatcher;C)V

    .line 267
    return-void
.end method

.method public constructor <init>(Lcn/xutils/commons/text/StrLookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    .line 331
    .local p1, "variableResolver":Lcn/xutils/commons/text/StrLookup;, "Lcn/xutils/commons/text/StrLookup<*>;"
    sget-object v0, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lcn/xutils/commons/text/StrMatcher;

    sget-object v1, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lcn/xutils/commons/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Lcn/xutils/commons/text/StrLookup;Lcn/xutils/commons/text/StrMatcher;Lcn/xutils/commons/text/StrMatcher;C)V

    .line 332
    return-void
.end method

.method public constructor <init>(Lcn/xutils/commons/text/StrLookup;Lcn/xutils/commons/text/StrMatcher;Lcn/xutils/commons/text/StrMatcher;C)V
    .locals 6
    .param p2, "prefixMatcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p3, "suffixMatcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/text/StrLookup<",
            "*>;",
            "Lcn/xutils/commons/text/StrMatcher;",
            "Lcn/xutils/commons/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    .line 384
    .local p1, "variableResolver":Lcn/xutils/commons/text/StrLookup;, "Lcn/xutils/commons/text/StrLookup<*>;"
    sget-object v5, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lcn/xutils/commons/text/StrMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Lcn/xutils/commons/text/StrLookup;Lcn/xutils/commons/text/StrMatcher;Lcn/xutils/commons/text/StrMatcher;CLcn/xutils/commons/text/StrMatcher;)V

    .line 385
    return-void
.end method

.method public constructor <init>(Lcn/xutils/commons/text/StrLookup;Lcn/xutils/commons/text/StrMatcher;Lcn/xutils/commons/text/StrMatcher;CLcn/xutils/commons/text/StrMatcher;)V
    .locals 0
    .param p2, "prefixMatcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p3, "suffixMatcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p4, "escape"    # C
    .param p5, "valueDelimiterMatcher"    # Lcn/xutils/commons/text/StrMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/text/StrLookup<",
            "*>;",
            "Lcn/xutils/commons/text/StrMatcher;",
            "Lcn/xutils/commons/text/StrMatcher;",
            "C",
            "Lcn/xutils/commons/text/StrMatcher;",
            ")V"
        }
    .end annotation

    .line 400
    .local p1, "variableResolver":Lcn/xutils/commons/text/StrLookup;, "Lcn/xutils/commons/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrSubstitutor;->setVariableResolver(Lcn/xutils/commons/text/StrLookup;)V

    .line 402
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 403
    invoke-virtual {p0, p3}, Lcn/xutils/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 404
    invoke-virtual {p0, p4}, Lcn/xutils/commons/text/StrSubstitutor;->setEscapeChar(C)V

    .line 405
    invoke-virtual {p0, p5}, Lcn/xutils/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 406
    return-void
.end method

.method public constructor <init>(Lcn/xutils/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 344
    .local p1, "variableResolver":Lcn/xutils/commons/text/StrLookup;, "Lcn/xutils/commons/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrSubstitutor;->setVariableResolver(Lcn/xutils/commons/text/StrLookup;)V

    .line 346
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 347
    invoke-virtual {p0, p3}, Lcn/xutils/commons/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 348
    invoke-virtual {p0, p4}, Lcn/xutils/commons/text/StrSubstitutor;->setEscapeChar(C)V

    .line 349
    sget-object v0, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lcn/xutils/commons/text/StrMatcher;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 350
    return-void
.end method

.method public constructor <init>(Lcn/xutils/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .param p5, "valueDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 364
    .local p1, "variableResolver":Lcn/xutils/commons/text/StrLookup;, "Lcn/xutils/commons/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrSubstitutor;->setVariableResolver(Lcn/xutils/commons/text/StrLookup;)V

    .line 366
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 367
    invoke-virtual {p0, p3}, Lcn/xutils/commons/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 368
    invoke-virtual {p0, p4}, Lcn/xutils/commons/text/StrSubstitutor;->setEscapeChar(C)V

    .line 369
    invoke-virtual {p0, p5}, Lcn/xutils/commons/text/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 370
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 277
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lcn/xutils/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lcn/xutils/commons/text/StrLookup;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lcn/xutils/commons/text/StrMatcher;

    sget-object v2, Lcn/xutils/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lcn/xutils/commons/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Lcn/xutils/commons/text/StrLookup;Lcn/xutils/commons/text/StrMatcher;Lcn/xutils/commons/text/StrMatcher;C)V

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 290
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lcn/xutils/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lcn/xutils/commons/text/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Lcn/xutils/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 305
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lcn/xutils/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lcn/xutils/commons/text/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Lcn/xutils/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 306
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 6
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .param p5, "valueDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 322
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lcn/xutils/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lcn/xutils/commons/text/StrLookup;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Lcn/xutils/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 323
    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "varName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 918
    .local p2, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    return-void

    .line 921
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    .line 922
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 923
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 924
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 925
    const-string v1, "->"

    invoke-virtual {v0, p2, v1}, Lcn/xutils/commons/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 926
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 208
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lcn/xutils/commons/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lcn/xutils/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 225
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lcn/xutils/commons/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/xutils/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueProperties"    # Ljava/util/Properties;

    .line 237
    if-nez p1, :cond_0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v0, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 242
    .local v1, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "propValue":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v2    # "propName":Ljava/lang/String;
    .end local v3    # "propValue":Ljava/lang/String;
    goto :goto_0

    .line 247
    :cond_1
    invoke-static {p0, v0}, Lcn/xutils/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;

    .line 258
    new-instance v0, Lcn/xutils/commons/text/StrSubstitutor;

    invoke-static {}, Lcn/xutils/commons/text/StrLookup;->systemPropertiesLookup()Lcn/xutils/commons/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrSubstitutor;-><init>(Lcn/xutils/commons/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lcn/xutils/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lcn/xutils/commons/text/StrBuilder;IILjava/util/List;)I
    .locals 31
    .param p1, "buf"    # Lcn/xutils/commons/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/text/StrBuilder;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 778
    .local p4, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcn/xutils/commons/text/StrSubstitutor;->getVariablePrefixMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v4

    .line 779
    .local v4, "pfxMatcher":Lcn/xutils/commons/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lcn/xutils/commons/text/StrSubstitutor;->getVariableSuffixMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v5

    .line 780
    .local v5, "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lcn/xutils/commons/text/StrSubstitutor;->getEscapeChar()C

    move-result v6

    .line 781
    .local v6, "escape":C
    invoke-virtual/range {p0 .. p0}, Lcn/xutils/commons/text/StrSubstitutor;->getValueDelimiterMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v7

    .line 782
    .local v7, "valueDelimMatcher":Lcn/xutils/commons/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lcn/xutils/commons/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v8

    .line 784
    .local v8, "substitutionInVariablesEnabled":Z
    if-nez p4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 785
    .local v11, "top":Z
    :goto_0
    const/4 v12, 0x0

    .line 786
    .local v12, "altered":Z
    const/4 v13, 0x0

    .line 787
    .local v13, "lengthChange":I
    iget-object v14, v1, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 788
    .local v14, "chars":[C
    add-int v15, v2, v3

    .line 789
    .local v15, "bufEnd":I
    move/from16 v16, p2

    move v10, v15

    move/from16 v9, v16

    move-object v15, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, p4

    .line 790
    .end local p4    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "pos":I
    .local v10, "bufEnd":I
    .local v12, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "altered":Z
    .local v14, "lengthChange":I
    .local v15, "chars":[C
    :goto_1
    if-ge v9, v10, :cond_11

    .line 791
    invoke-virtual {v4, v15, v9, v2, v10}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v18

    .line 793
    .local v18, "startMatchLen":I
    if-nez v18, :cond_1

    .line 794
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v24, v11

    const/16 v16, 0x1

    goto/16 :goto_8

    .line 796
    :cond_1
    if-le v9, v2, :cond_3

    add-int/lit8 v19, v9, -0x1

    move/from16 p4, v13

    .end local v13    # "altered":Z
    .local p4, "altered":Z
    aget-char v13, v15, v19

    if-ne v13, v6, :cond_4

    .line 798
    iget-boolean v13, v0, Lcn/xutils/commons/text/StrSubstitutor;->preserveEscapes:Z

    if-eqz v13, :cond_2

    .line 799
    add-int/lit8 v9, v9, 0x1

    .line 800
    move/from16 v13, p4

    goto :goto_1

    .line 802
    :cond_2
    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v1, v13}, Lcn/xutils/commons/text/StrBuilder;->deleteCharAt(I)Lcn/xutils/commons/text/StrBuilder;

    .line 803
    iget-object v13, v1, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 804
    .end local v15    # "chars":[C
    .local v13, "chars":[C
    add-int/lit8 v14, v14, -0x1

    .line 805
    const/4 v15, 0x1

    .line 806
    .end local p4    # "altered":Z
    .local v15, "altered":Z
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v24, v11

    const/16 v16, 0x1

    move/from16 v30, v15

    move-object v15, v13

    move/from16 v13, v30

    goto/16 :goto_8

    .line 796
    .local v13, "altered":Z
    .local v15, "chars":[C
    :cond_3
    move/from16 p4, v13

    .line 809
    .end local v13    # "altered":Z
    .restart local p4    # "altered":Z
    :cond_4
    move v13, v9

    .line 810
    .local v13, "startPos":I
    add-int v9, v9, v18

    .line 812
    const/16 v19, 0x0

    .line 813
    .local v19, "nestedVarCount":I
    :goto_2
    if-ge v9, v10, :cond_10

    .line 814
    if-eqz v8, :cond_5

    .line 815
    invoke-virtual {v4, v15, v9, v2, v10}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    move/from16 v21, v20

    .local v21, "endMatchLen":I
    if-eqz v20, :cond_5

    .line 818
    add-int/lit8 v19, v19, 0x1

    .line 819
    add-int v9, v9, v21

    .line 820
    goto :goto_2

    .line 823
    .end local v21    # "endMatchLen":I
    :cond_5
    invoke-virtual {v5, v15, v9, v2, v10}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    .line 825
    .local v20, "endMatchLen":I
    if-nez v20, :cond_6

    .line 826
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 829
    :cond_6
    if-nez v19, :cond_f

    .line 830
    move-object/from16 v21, v5

    .end local v5    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .local v21, "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    new-instance v5, Ljava/lang/String;

    move/from16 v22, v6

    .end local v6    # "escape":C
    .local v22, "escape":C
    add-int v6, v13, v18

    sub-int v23, v9, v13

    move/from16 v24, v11

    .end local v11    # "top":Z
    .local v24, "top":Z
    sub-int v11, v23, v18

    invoke-direct {v5, v15, v6, v11}, Ljava/lang/String;-><init>([CII)V

    .line 833
    .local v5, "varNameExpr":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 834
    new-instance v6, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v6, v5}, Lcn/xutils/commons/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 835
    .local v6, "bufName":Lcn/xutils/commons/text/StrBuilder;
    invoke-virtual {v6}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v11

    move-object/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "varNameExpr":Ljava/lang/String;
    .local v23, "varNameExpr":Ljava/lang/String;
    invoke-virtual {v0, v6, v5, v11}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    .line 836
    invoke-virtual {v6}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v23    # "varNameExpr":Ljava/lang/String;
    .restart local v5    # "varNameExpr":Ljava/lang/String;
    goto :goto_3

    .line 833
    .end local v6    # "bufName":Lcn/xutils/commons/text/StrBuilder;
    :cond_7
    move-object/from16 v23, v5

    .line 838
    :goto_3
    add-int v9, v9, v20

    .line 839
    move v6, v9

    .line 841
    .local v6, "endPos":I
    move-object v11, v5

    .line 842
    .local v11, "varName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 844
    .local v23, "varDefaultValue":Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 845
    move-object/from16 v25, v11

    .end local v11    # "varName":Ljava/lang/String;
    .local v25, "varName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 847
    .local v11, "varNameExprChars":[C
    const/16 v26, 0x0

    move/from16 v27, v14

    move/from16 v14, v26

    .local v14, "i":I
    .local v27, "lengthChange":I
    :goto_4
    move/from16 v26, v10

    .end local v10    # "bufEnd":I
    .local v26, "bufEnd":I
    array-length v10, v11

    if-ge v14, v10, :cond_b

    .line 849
    if-nez v8, :cond_8

    array-length v10, v11

    .line 850
    invoke-virtual {v4, v11, v14, v14, v10}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v10

    if-eqz v10, :cond_8

    .line 851
    goto :goto_5

    .line 853
    :cond_8
    invoke-virtual {v7, v11, v14}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CI)I

    move-result v10

    move/from16 v28, v10

    .local v28, "valueDelimiterMatchLen":I
    if-eqz v10, :cond_9

    .line 854
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 855
    .end local v25    # "varName":Ljava/lang/String;
    .local v17, "varName":Ljava/lang/String;
    add-int v10, v14, v28

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 856
    move-object/from16 v11, v17

    goto :goto_6

    .line 847
    .end local v17    # "varName":Ljava/lang/String;
    .restart local v25    # "varName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v26

    goto :goto_4

    .line 844
    .end local v25    # "varName":Ljava/lang/String;
    .end local v26    # "bufEnd":I
    .end local v27    # "lengthChange":I
    .end local v28    # "valueDelimiterMatchLen":I
    .restart local v10    # "bufEnd":I
    .local v11, "varName":Ljava/lang/String;
    .local v14, "lengthChange":I
    :cond_a
    move/from16 v26, v10

    move-object/from16 v25, v11

    move/from16 v27, v14

    .line 862
    .end local v10    # "bufEnd":I
    .end local v11    # "varName":Ljava/lang/String;
    .end local v14    # "lengthChange":I
    .restart local v25    # "varName":Ljava/lang/String;
    .restart local v26    # "bufEnd":I
    .restart local v27    # "lengthChange":I
    :cond_b
    :goto_5
    move-object/from16 v11, v25

    .end local v25    # "varName":Ljava/lang/String;
    .restart local v11    # "varName":Ljava/lang/String;
    :goto_6
    if-nez v12, :cond_c

    .line 863
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v10

    .line 864
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v15, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_c
    invoke-direct {v0, v11, v12}, Lcn/xutils/commons/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 870
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual {v0, v11, v1, v13, v6}, Lcn/xutils/commons/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lcn/xutils/commons/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v10

    .line 875
    .local v10, "varValue":Ljava/lang/String;
    if-nez v10, :cond_d

    .line 876
    move-object/from16 v10, v23

    .line 878
    :cond_d
    if-eqz v10, :cond_e

    .line 880
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    .line 881
    .local v14, "varLen":I
    invoke-virtual {v1, v13, v6, v10}, Lcn/xutils/commons/text/StrBuilder;->replace(IILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 882
    const/16 v17, 0x1

    .line 883
    .end local p4    # "altered":Z
    .local v17, "altered":Z
    invoke-direct {v0, v1, v13, v14, v12}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;IILjava/util/List;)I

    move-result v25

    .line 885
    .local v25, "change":I
    add-int v28, v25, v14

    sub-int v29, v6, v13

    sub-int v28, v28, v29

    .line 887
    .end local v25    # "change":I
    .local v28, "change":I
    add-int v9, v9, v28

    .line 888
    add-int v25, v26, v28

    .line 889
    .end local v26    # "bufEnd":I
    .local v25, "bufEnd":I
    add-int v26, v27, v28

    .line 890
    .end local v27    # "lengthChange":I
    .local v26, "lengthChange":I
    iget-object v15, v1, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    move/from16 v14, v26

    goto :goto_7

    .line 878
    .end local v14    # "varLen":I
    .end local v17    # "altered":Z
    .end local v25    # "bufEnd":I
    .end local v28    # "change":I
    .local v26, "bufEnd":I
    .restart local v27    # "lengthChange":I
    .restart local p4    # "altered":Z
    :cond_e
    move/from16 v17, p4

    move/from16 v25, v26

    move/from16 v14, v27

    .line 895
    .end local v26    # "bufEnd":I
    .end local v27    # "lengthChange":I
    .end local p4    # "altered":Z
    .local v14, "lengthChange":I
    .restart local v17    # "altered":Z
    .restart local v25    # "bufEnd":I
    :goto_7
    nop

    .line 896
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v26

    const/16 v16, 0x1

    add-int/lit8 v0, v26, -0x1

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 897
    move/from16 v13, v17

    move/from16 v10, v25

    goto :goto_8

    .line 899
    .end local v17    # "altered":Z
    .end local v21    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .end local v22    # "escape":C
    .end local v23    # "varDefaultValue":Ljava/lang/String;
    .end local v24    # "top":Z
    .end local v25    # "bufEnd":I
    .local v5, "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .local v6, "escape":C
    .local v10, "bufEnd":I
    .local v11, "top":Z
    .restart local p4    # "altered":Z
    :cond_f
    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v10

    move/from16 v24, v11

    move/from16 v27, v14

    const/16 v16, 0x1

    .end local v5    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .end local v6    # "escape":C
    .end local v10    # "bufEnd":I
    .end local v11    # "top":Z
    .end local v14    # "lengthChange":I
    .restart local v21    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .restart local v22    # "escape":C
    .restart local v24    # "top":Z
    .restart local v26    # "bufEnd":I
    .restart local v27    # "lengthChange":I
    add-int/lit8 v19, v19, -0x1

    .line 900
    add-int v9, v9, v20

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 813
    .end local v20    # "endMatchLen":I
    .end local v21    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .end local v22    # "escape":C
    .end local v24    # "top":Z
    .end local v26    # "bufEnd":I
    .end local v27    # "lengthChange":I
    .restart local v5    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .restart local v6    # "escape":C
    .restart local v10    # "bufEnd":I
    .restart local v11    # "top":Z
    .restart local v14    # "lengthChange":I
    :cond_10
    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v10

    move/from16 v24, v11

    move/from16 v27, v14

    const/16 v16, 0x1

    .end local v5    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .end local v6    # "escape":C
    .end local v10    # "bufEnd":I
    .end local v11    # "top":Z
    .end local v14    # "lengthChange":I
    .restart local v21    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .restart local v22    # "escape":C
    .restart local v24    # "top":Z
    .restart local v26    # "bufEnd":I
    .restart local v27    # "lengthChange":I
    move/from16 v13, p4

    .line 904
    .end local v18    # "startMatchLen":I
    .end local v19    # "nestedVarCount":I
    .end local v26    # "bufEnd":I
    .end local v27    # "lengthChange":I
    .end local p4    # "altered":Z
    .restart local v10    # "bufEnd":I
    .local v13, "altered":Z
    .restart local v14    # "lengthChange":I
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v5, v21

    move/from16 v6, v22

    move/from16 v11, v24

    goto/16 :goto_1

    .line 905
    .end local v21    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .end local v22    # "escape":C
    .end local v24    # "top":Z
    .restart local v5    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .restart local v6    # "escape":C
    .restart local v11    # "top":Z
    :cond_11
    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v10

    move/from16 v24, v11

    move/from16 p4, v13

    move/from16 v27, v14

    .end local v5    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .end local v6    # "escape":C
    .end local v10    # "bufEnd":I
    .end local v11    # "top":Z
    .end local v13    # "altered":Z
    .end local v14    # "lengthChange":I
    .restart local v21    # "suffMatcher":Lcn/xutils/commons/text/StrMatcher;
    .restart local v22    # "escape":C
    .restart local v24    # "top":Z
    .restart local v26    # "bufEnd":I
    .restart local v27    # "lengthChange":I
    .restart local p4    # "altered":Z
    if-eqz v24, :cond_12

    .line 906
    return p4

    .line 908
    :cond_12
    return v27
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 1

    .line 962
    iget-char v0, p0, Lcn/xutils/commons/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getValueDelimiterMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 1113
    iget-object v0, p0, Lcn/xutils/commons/text/StrSubstitutor;->valueDelimiterMatcher:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public getVariablePrefixMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 987
    iget-object v0, p0, Lcn/xutils/commons/text/StrSubstitutor;->prefixMatcher:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lcn/xutils/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/xutils/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lcn/xutils/commons/text/StrSubstitutor;->variableResolver:Lcn/xutils/commons/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 1048
    iget-object v0, p0, Lcn/xutils/commons/text/StrSubstitutor;->suffixMatcher:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 1

    .line 1202
    iget-boolean v0, p0, Lcn/xutils/commons/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public isPreserveEscapes()Z
    .locals 1

    .line 1227
    iget-boolean v0, p0, Lcn/xutils/commons/text/StrSubstitutor;->preserveEscapes:Z

    return v0
.end method

.method public replace(Lcn/xutils/commons/text/StrBuilder;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lcn/xutils/commons/text/StrBuilder;

    .line 579
    if-nez p1, :cond_0

    .line 580
    const/4 v0, 0x0

    return-object v0

    .line 582
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {p1}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Lcn/xutils/commons/text/StrBuilder;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    .line 583
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    .line 584
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lcn/xutils/commons/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Lcn/xutils/commons/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 602
    if-nez p1, :cond_0

    .line 603
    const/4 v0, 0x0

    return-object v0

    .line 605
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Lcn/xutils/commons/text/StrBuilder;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    .line 606
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    .line 607
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 540
    if-nez p1, :cond_0

    .line 541
    const/4 v0, 0x0

    return-object v0

    .line 543
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcn/xutils/commons/text/StrSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 562
    if-nez p1, :cond_0

    .line 563
    const/4 v0, 0x0

    return-object v0

    .line 565
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    .line 566
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    .line 567
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;

    .line 619
    if-nez p1, :cond_0

    .line 620
    const/4 v0, 0x0

    return-object v0

    .line 622
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v0}, Lcn/xutils/commons/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    .line 623
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    .line 624
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .line 416
    if-nez p1, :cond_0

    .line 417
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v0, p1}, Lcn/xutils/commons/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    return-object p1

    .line 423
    :cond_1
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 440
    if-nez p1, :cond_0

    .line 441
    const/4 v0, 0x0

    return-object v0

    .line 443
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    .line 444
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 447
    :cond_1
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 499
    if-nez p1, :cond_0

    .line 500
    const/4 v0, 0x0

    return-object v0

    .line 502
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    .line 503
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    .line 504
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 522
    if-nez p1, :cond_0

    .line 523
    const/4 v0, 0x0

    return-object v0

    .line 525
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    .line 526
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    .line 527
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([C)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # [C

    .line 459
    if-nez p1, :cond_0

    .line 460
    const/4 v0, 0x0

    return-object v0

    .line 462
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/xutils/commons/text/StrBuilder;->append([C)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    .line 463
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    .line 464
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 482
    if-nez p1, :cond_0

    .line 483
    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append([CII)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    .line 486
    .local v0, "buf":Lcn/xutils/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    .line 487
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceIn(Lcn/xutils/commons/text/StrBuilder;)Z
    .locals 2
    .param p1, "source"    # Lcn/xutils/commons/text/StrBuilder;

    .line 719
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 720
    return v0

    .line 722
    :cond_0
    invoke-virtual {p1}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Lcn/xutils/commons/text/StrBuilder;II)Z
    .locals 1
    .param p1, "source"    # Lcn/xutils/commons/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 739
    if-nez p1, :cond_0

    .line 740
    const/4 v0, 0x0

    return v0

    .line 742
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 636
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 637
    return v0

    .line 639
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcn/xutils/commons/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 657
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 658
    return v0

    .line 660
    :cond_0
    new-instance v1, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v1, p3}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v1

    .line 661
    .local v1, "buf":Lcn/xutils/commons/text/StrBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 662
    return v0

    .line 664
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {v1}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuilder;

    .line 678
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 679
    return v0

    .line 681
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcn/xutils/commons/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 700
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 701
    return v0

    .line 703
    :cond_0
    new-instance v1, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v1, p3}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v1

    .line 704
    .local v1, "buf":Lcn/xutils/commons/text/StrBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 705
    return v0

    .line 707
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {v1}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const/4 v0, 0x1

    return v0
.end method

.method protected resolveVariable(Ljava/lang/String;Lcn/xutils/commons/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "buf"    # Lcn/xutils/commons/text/StrBuilder;
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I

    .line 949
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrSubstitutor;->getVariableResolver()Lcn/xutils/commons/text/StrLookup;

    move-result-object v0

    .line 950
    .local v0, "resolver":Lcn/xutils/commons/text/StrLookup;, "Lcn/xutils/commons/text/StrLookup<*>;"
    if-nez v0, :cond_0

    .line 951
    const/4 v1, 0x0

    return-object v1

    .line 953
    :cond_0
    invoke-virtual {v0, p1}, Lcn/xutils/commons/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .locals 0
    .param p1, "enableSubstitutionInVariables"    # Z

    .line 1216
    iput-boolean p1, p0, Lcn/xutils/commons/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 1217
    return-void
.end method

.method public setEscapeChar(C)V
    .locals 0
    .param p1, "escapeCharacter"    # C

    .line 973
    iput-char p1, p0, Lcn/xutils/commons/text/StrSubstitutor;->escapeChar:C

    .line 974
    return-void
.end method

.method public setPreserveEscapes(Z)V
    .locals 0
    .param p1, "preserveEscapes"    # Z

    .line 1243
    iput-boolean p1, p0, Lcn/xutils/commons/text/StrSubstitutor;->preserveEscapes:Z

    .line 1244
    return-void
.end method

.method public setValueDelimiter(C)Lcn/xutils/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "valueDelimiter"    # C

    .line 1150
    invoke-static {p1}, Lcn/xutils/commons/text/StrMatcher;->charMatcher(C)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lcn/xutils/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "valueDelimiter"    # Ljava/lang/String;

    .line 1170
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    .line 1172
    return-object p0

    .line 1174
    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setValueDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;
    .locals 0
    .param p1, "valueDelimiterMatcher"    # Lcn/xutils/commons/text/StrMatcher;

    .line 1133
    iput-object p1, p0, Lcn/xutils/commons/text/StrSubstitutor;->valueDelimiterMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 1134
    return-object p0
.end method

.method public setVariablePrefix(C)Lcn/xutils/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "prefix"    # C

    .line 1019
    invoke-static {p1}, Lcn/xutils/commons/text/StrMatcher;->charMatcher(C)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lcn/xutils/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1034
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/xutils/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefixMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "prefixMatcher"    # Lcn/xutils/commons/text/StrMatcher;

    .line 1003
    const-string v0, "prefixMatcher"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/text/StrMatcher;

    iput-object v0, p0, Lcn/xutils/commons/text/StrSubstitutor;->prefixMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 1004
    return-object p0
.end method

.method public setVariableResolver(Lcn/xutils/commons/text/StrLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    .line 1192
    .local p1, "variableResolver":Lcn/xutils/commons/text/StrLookup;, "Lcn/xutils/commons/text/StrLookup<*>;"
    iput-object p1, p0, Lcn/xutils/commons/text/StrSubstitutor;->variableResolver:Lcn/xutils/commons/text/StrLookup;

    .line 1193
    return-void
.end method

.method public setVariableSuffix(C)Lcn/xutils/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "suffix"    # C

    .line 1080
    invoke-static {p1}, Lcn/xutils/commons/text/StrMatcher;->charMatcher(C)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lcn/xutils/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .line 1095
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/xutils/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffixMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "suffixMatcher"    # Lcn/xutils/commons/text/StrMatcher;

    .line 1064
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/text/StrMatcher;

    iput-object v0, p0, Lcn/xutils/commons/text/StrSubstitutor;->suffixMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 1065
    return-object p0
.end method

.method protected substitute(Lcn/xutils/commons/text/StrBuilder;II)Z
    .locals 1
    .param p1, "buf"    # Lcn/xutils/commons/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 762
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/xutils/commons/text/StrSubstitutor;->substitute(Lcn/xutils/commons/text/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
