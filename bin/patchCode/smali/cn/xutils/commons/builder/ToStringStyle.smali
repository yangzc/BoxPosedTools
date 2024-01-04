.class public abstract Lcn/xutils/commons/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/builder/ToStringStyle$DefaultToStringStyle;,
        Lcn/xutils/commons/builder/ToStringStyle$MultiLineToStringStyle;,
        Lcn/xutils/commons/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lcn/xutils/commons/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;,
        Lcn/xutils/commons/builder/ToStringStyle$NoClassNameToStringStyle;,
        Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

.field public static final JSON_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

.field public static final NO_CLASS_NAME_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SHORT_PREFIX_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

.field public static final SIMPLE_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

.field private static final serialVersionUID:J = -0x23ea08d00c05296cL


# instance fields
.field private arrayContentDetail:Z

.field private arrayEnd:Ljava/lang/String;

.field private arraySeparator:Ljava/lang/String;

.field private arrayStart:Ljava/lang/String;

.field private contentEnd:Ljava/lang/String;

.field private contentStart:Ljava/lang/String;

.field private defaultFullDetail:Z

.field private fieldNameValueSeparator:Ljava/lang/String;

.field private fieldSeparator:Ljava/lang/String;

.field private fieldSeparatorAtEnd:Z

.field private fieldSeparatorAtStart:Z

.field private nullText:Ljava/lang/String;

.field private sizeEndText:Ljava/lang/String;

.field private sizeStartText:Ljava/lang/String;

.field private summaryObjectEndText:Ljava/lang/String;

.field private summaryObjectStartText:Ljava/lang/String;

.field private useClassName:Z

.field private useFieldNames:Z

.field private useIdentityHashCode:Z

.field private useShortClassName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcn/xutils/commons/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lcn/xutils/commons/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lcn/xutils/commons/builder/ToStringStyle;->DEFAULT_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    .line 98
    new-instance v0, Lcn/xutils/commons/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lcn/xutils/commons/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lcn/xutils/commons/builder/ToStringStyle;->MULTI_LINE_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    .line 109
    new-instance v0, Lcn/xutils/commons/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lcn/xutils/commons/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lcn/xutils/commons/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    .line 121
    new-instance v0, Lcn/xutils/commons/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lcn/xutils/commons/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lcn/xutils/commons/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    .line 131
    new-instance v0, Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lcn/xutils/commons/builder/ToStringStyle;->SIMPLE_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    .line 143
    new-instance v0, Lcn/xutils/commons/builder/ToStringStyle$NoClassNameToStringStyle;

    invoke-direct {v0}, Lcn/xutils/commons/builder/ToStringStyle$NoClassNameToStringStyle;-><init>()V

    sput-object v0, Lcn/xutils/commons/builder/ToStringStyle;->NO_CLASS_NAME_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    .line 162
    new-instance v0, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;

    invoke-direct {v0}, Lcn/xutils/commons/builder/ToStringStyle$JsonToStringStyle;-><init>()V

    sput-object v0, Lcn/xutils/commons/builder/ToStringStyle;->JSON_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    .line 169
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/xutils/commons/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useFieldNames:Z

    .line 251
    iput-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useClassName:Z

    .line 261
    iput-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 266
    const-string v1, "["

    iput-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 271
    const-string v1, "]"

    iput-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 276
    const-string v1, "="

    iput-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 291
    const-string v1, ","

    iput-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 296
    const-string v2, "{"

    iput-object v2, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 301
    iput-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 306
    iput-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayContentDetail:Z

    .line 311
    const-string v1, "}"

    iput-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 317
    iput-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->defaultFullDetail:Z

    .line 322
    const-string v0, "<null>"

    iput-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 327
    const-string v0, "<size="

    iput-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 332
    const-string v0, ">"

    iput-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 337
    const-string v1, "<"

    iput-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 342
    iput-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public static getRegistry()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 187
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 200
    invoke-static {}, Lcn/xutils/commons/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 201
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static register(Ljava/lang/Object;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 212
    if-eqz p0, :cond_1

    .line 213
    invoke-static {}, Lcn/xutils/commons/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 214
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 215
    sget-object v1, Lcn/xutils/commons/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 217
    :cond_0
    invoke-static {}, Lcn/xutils/commons/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 232
    if-eqz p0, :cond_0

    .line 233
    invoke-static {}, Lcn/xutils/commons/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 234
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    sget-object v1, Lcn/xutils/commons/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 241
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .line 727
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 729
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 753
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 755
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 779
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 781
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 805
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 807
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 675
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 677
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 649
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 651
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 444
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 446
    if-nez p3, :cond_0

    .line 447
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 453
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .line 701
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 703
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 831
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 833
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1131
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1133
    if-nez p3, :cond_0

    .line 1134
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1136
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_0

    .line 1140
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 1143
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1190
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1192
    if-nez p3, :cond_0

    .line 1193
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1195
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1196
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 1199
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    .line 1202
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1249
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1251
    if-nez p3, :cond_0

    .line 1252
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1255
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 1258
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    .line 1261
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1308
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1310
    if-nez p3, :cond_0

    .line 1311
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1313
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 1317
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    .line 1320
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1013
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1015
    if-nez p3, :cond_0

    .line 1016
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1018
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_0

    .line 1022
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    .line 1025
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 954
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 956
    if-nez p3, :cond_0

    .line 957
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_0

    .line 963
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    .line 966
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 967
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 859
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 861
    if-nez p3, :cond_0

    .line 862
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 868
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1072
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1074
    if-nez p3, :cond_0

    .line 1075
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_0

    .line 1081
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    .line 1084
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1367
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1369
    if-nez p3, :cond_0

    .line 1370
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :cond_0
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1373
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 1376
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    .line 1379
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1380
    return-void
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1422
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1423
    invoke-static {p2}, Lcn/xutils/commons/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1424
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_0

    .line 1425
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1427
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1430
    :cond_1
    :goto_0
    return-void
.end method

.method protected appendContentEnd(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 1461
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1462
    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 1452
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1453
    return-void
.end method

.method protected appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 585
    invoke-static {p1, p3}, Lcn/xutils/commons/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 586
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .line 741
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 742
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 767
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 768
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 793
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 794
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 819
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 820
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 689
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 690
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "item"    # Ljava/lang/Object;

    .line 902
    if-lez p3, :cond_0

    .line 903
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    :cond_0
    if-nez p4, :cond_1

    .line 906
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 908
    :cond_1
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, p4, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 910
    :goto_0
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 663
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 664
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 598
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 599
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
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

    .line 610
    .local p3, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 611
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 622
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 623
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .line 715
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 716
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 845
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 846
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .line 1156
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1158
    if-lez v0, :cond_0

    .line 1159
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1161
    :cond_0
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 1157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1163
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1164
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .line 1215
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1217
    if-lez v0, :cond_0

    .line 1218
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1220
    :cond_0
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1223
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .line 1274
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1276
    if-lez v0, :cond_0

    .line 1277
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1279
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 1275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1281
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1282
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .line 1333
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1335
    if-lez v0, :cond_0

    .line 1336
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1338
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1340
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1341
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .line 1038
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1039
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1040
    if-lez v0, :cond_0

    .line 1041
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1043
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1039
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1045
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1046
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .line 979
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 980
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 981
    if-lez v0, :cond_0

    .line 982
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 984
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 987
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .line 884
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 886
    aget-object v1, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 889
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .line 1097
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1098
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1099
    if-lez v0, :cond_0

    .line 1100
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1102
    :cond_0
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1104
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1105
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .line 1392
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1394
    if-lez v0, :cond_0

    .line 1395
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1397
    :cond_0
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 1393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1399
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1400
    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 413
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0, p1}, Lcn/xutils/commons/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Lcn/xutils/commons/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    .line 417
    invoke-static {p2}, Lcn/xutils/commons/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 418
    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1505
    invoke-virtual {p0, p1}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 1506
    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 1482
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1483
    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1492
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1493
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1494
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1496
    :cond_0
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1439
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1440
    invoke-static {p2}, Lcn/xutils/commons/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1441
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1442
    invoke-static {p2}, Lcn/xutils/commons/ObjectUtils;->identityHashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1444
    :cond_0
    return-void
.end method

.method protected appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "detail"    # Z

    .line 476
    invoke-static {p3}, Lcn/xutils/commons/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    return-void

    .line 482
    :cond_0
    invoke-static {p3}, Lcn/xutils/commons/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 485
    :try_start_0
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 486
    if-eqz p4, :cond_1

    .line 487
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 489
    :cond_1
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 492
    :cond_2
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 493
    if-eqz p4, :cond_3

    .line 494
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 496
    :cond_3
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 499
    :cond_4
    instance-of v0, p3, [J

    if-eqz v0, :cond_6

    .line 500
    if-eqz p4, :cond_5

    .line 501
    move-object v0, p3

    check-cast v0, [J

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 503
    :cond_5
    move-object v0, p3

    check-cast v0, [J

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 506
    :cond_6
    instance-of v0, p3, [I

    if-eqz v0, :cond_8

    .line 507
    if-eqz p4, :cond_7

    .line 508
    move-object v0, p3

    check-cast v0, [I

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 510
    :cond_7
    move-object v0, p3

    check-cast v0, [I

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 513
    :cond_8
    instance-of v0, p3, [S

    if-eqz v0, :cond_a

    .line 514
    if-eqz p4, :cond_9

    .line 515
    move-object v0, p3

    check-cast v0, [S

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 517
    :cond_9
    move-object v0, p3

    check-cast v0, [S

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 520
    :cond_a
    instance-of v0, p3, [B

    if-eqz v0, :cond_c

    .line 521
    if-eqz p4, :cond_b

    .line 522
    move-object v0, p3

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 524
    :cond_b
    move-object v0, p3

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 527
    :cond_c
    instance-of v0, p3, [C

    if-eqz v0, :cond_e

    .line 528
    if-eqz p4, :cond_d

    .line 529
    move-object v0, p3

    check-cast v0, [C

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 531
    :cond_d
    move-object v0, p3

    check-cast v0, [C

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 534
    :cond_e
    instance-of v0, p3, [D

    if-eqz v0, :cond_10

    .line 535
    if-eqz p4, :cond_f

    .line 536
    move-object v0, p3

    check-cast v0, [D

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 538
    :cond_f
    move-object v0, p3

    check-cast v0, [D

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 541
    :cond_10
    instance-of v0, p3, [F

    if-eqz v0, :cond_12

    .line 542
    if-eqz p4, :cond_11

    .line 543
    move-object v0, p3

    check-cast v0, [F

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 545
    :cond_11
    move-object v0, p3

    check-cast v0, [F

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 548
    :cond_12
    instance-of v0, p3, [Z

    if-eqz v0, :cond_14

    .line 549
    if-eqz p4, :cond_13

    .line 550
    move-object v0, p3

    check-cast v0, [Z

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 552
    :cond_13
    move-object v0, p3

    check-cast v0, [Z

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 555
    :cond_14
    invoke-static {p3}, Lcn/xutils/commons/ObjectUtils;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 556
    if-eqz p4, :cond_15

    .line 557
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 559
    :cond_15
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 562
    :cond_16
    if-eqz p4, :cond_17

    .line 563
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 565
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :goto_0
    invoke-static {p3}, Lcn/xutils/commons/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 569
    nop

    .line 570
    return-void

    .line 568
    :catchall_0
    move-exception v0

    invoke-static {p3}, Lcn/xutils/commons/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 569
    throw v0
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1473
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1474
    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 395
    if-eqz p2, :cond_0

    .line 396
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p0, p1}, Lcn/xutils/commons/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 399
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0, p1}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 403
    :cond_0
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 635
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .line 1176
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1177
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .line 1235
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1236
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .line 1294
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1295
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .line 1353
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1354
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .line 1058
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1059
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .line 999
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1000
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .line 940
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 941
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .line 1117
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1118
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .line 1412
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1413
    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "size"    # I

    .line 1524
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1525
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1526
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1527
    return-void
.end method

.method public appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "superToString"    # Ljava/lang/String;

    .line 361
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "toString"    # Ljava/lang/String;

    .line 375
    if-eqz p2, :cond_1

    .line 376
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    .local v0, "pos1":I
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 378
    .local v1, "pos2":I
    if-eq v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 379
    iget-boolean v2, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {p0, p1}, Lcn/xutils/commons/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 382
    :cond_0
    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 383
    invoke-virtual {p0, p1}, Lcn/xutils/commons/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 386
    .end local v0    # "pos1":I
    .end local v1    # "pos2":I
    :cond_1
    return-void
.end method

.method protected getArrayEnd()Ljava/lang/String;
    .locals 1

    .line 1708
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getArraySeparator()Ljava/lang/String;
    .locals 1

    .line 1732
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getArrayStart()Ljava/lang/String;
    .locals 1

    .line 1684
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentEnd()Ljava/lang/String;
    .locals 1

    .line 1780
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStart()Ljava/lang/String;
    .locals 1

    .line 1756
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldNameValueSeparator()Ljava/lang/String;
    .locals 1

    .line 1804
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldSeparator()Ljava/lang/String;
    .locals 1

    .line 1828
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getNullText()Ljava/lang/String;
    .locals 1

    .line 1896
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1560
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcn/xutils/commons/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeEndText()Ljava/lang/String;
    .locals 1

    .line 1953
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSizeStartText()Ljava/lang/String;
    .locals 1

    .line 1923
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectEndText()Ljava/lang/String;
    .locals 1

    .line 2013
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectStartText()Ljava/lang/String;
    .locals 1

    .line 1983
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected isArrayContentDetail()Z
    .locals 1

    .line 1666
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayContentDetail:Z

    return v0
.end method

.method protected isDefaultFullDetail()Z
    .locals 1

    .line 1647
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->defaultFullDetail:Z

    return v0
.end method

.method protected isFieldSeparatorAtEnd()Z
    .locals 1

    .line 1876
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return v0
.end method

.method protected isFieldSeparatorAtStart()Z
    .locals 1

    .line 1854
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return v0
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "fullDetailRequest"    # Ljava/lang/Boolean;

    .line 1544
    if-nez p1, :cond_0

    .line 1545
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->defaultFullDetail:Z

    return v0

    .line 1547
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected isUseClassName()Z
    .locals 1

    .line 1572
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useClassName:Z

    return v0
.end method

.method protected isUseFieldNames()Z
    .locals 1

    .line 1628
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useFieldNames:Z

    return v0
.end method

.method protected isUseIdentityHashCode()Z
    .locals 1

    .line 1610
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected isUseShortClassName()Z
    .locals 1

    .line 1591
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # Ljava/lang/Object;

    .line 922
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 924
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 925
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 924
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    return-void
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 427
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/xutils/commons/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 430
    :cond_0
    return-void
.end method

.method protected setArrayContentDetail(Z)V
    .locals 0
    .param p1, "arrayContentDetail"    # Z

    .line 1675
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayContentDetail:Z

    .line 1676
    return-void
.end method

.method protected setArrayEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "arrayEnd"    # Ljava/lang/String;

    .line 1720
    if-nez p1, :cond_0

    .line 1721
    const-string p1, ""

    .line 1723
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 1724
    return-void
.end method

.method protected setArraySeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "arraySeparator"    # Ljava/lang/String;

    .line 1744
    if-nez p1, :cond_0

    .line 1745
    const-string p1, ""

    .line 1747
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 1748
    return-void
.end method

.method protected setArrayStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "arrayStart"    # Ljava/lang/String;

    .line 1696
    if-nez p1, :cond_0

    .line 1697
    const-string p1, ""

    .line 1699
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 1700
    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentEnd"    # Ljava/lang/String;

    .line 1792
    if-nez p1, :cond_0

    .line 1793
    const-string p1, ""

    .line 1795
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 1796
    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentStart"    # Ljava/lang/String;

    .line 1768
    if-nez p1, :cond_0

    .line 1769
    const-string p1, ""

    .line 1771
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 1772
    return-void
.end method

.method protected setDefaultFullDetail(Z)V
    .locals 0
    .param p1, "defaultFullDetail"    # Z

    .line 1657
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->defaultFullDetail:Z

    .line 1658
    return-void
.end method

.method protected setFieldNameValueSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldNameValueSeparator"    # Ljava/lang/String;

    .line 1816
    if-nez p1, :cond_0

    .line 1817
    const-string p1, ""

    .line 1819
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 1820
    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldSeparator"    # Ljava/lang/String;

    .line 1840
    if-nez p1, :cond_0

    .line 1841
    const-string p1, ""

    .line 1843
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 1844
    return-void
.end method

.method protected setFieldSeparatorAtEnd(Z)V
    .locals 0
    .param p1, "fieldSeparatorAtEnd"    # Z

    .line 1887
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 1888
    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .locals 0
    .param p1, "fieldSeparatorAtStart"    # Z

    .line 1865
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 1866
    return-void
.end method

.method protected setNullText(Ljava/lang/String;)V
    .locals 0
    .param p1, "nullText"    # Ljava/lang/String;

    .line 1908
    if-nez p1, :cond_0

    .line 1909
    const-string p1, ""

    .line 1911
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 1912
    return-void
.end method

.method protected setSizeEndText(Ljava/lang/String;)V
    .locals 0
    .param p1, "sizeEndText"    # Ljava/lang/String;

    .line 1968
    if-nez p1, :cond_0

    .line 1969
    const-string p1, ""

    .line 1971
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 1972
    return-void
.end method

.method protected setSizeStartText(Ljava/lang/String;)V
    .locals 0
    .param p1, "sizeStartText"    # Ljava/lang/String;

    .line 1938
    if-nez p1, :cond_0

    .line 1939
    const-string p1, ""

    .line 1941
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 1942
    return-void
.end method

.method protected setSummaryObjectEndText(Ljava/lang/String;)V
    .locals 0
    .param p1, "summaryObjectEndText"    # Ljava/lang/String;

    .line 2028
    if-nez p1, :cond_0

    .line 2029
    const-string p1, ""

    .line 2031
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 2032
    return-void
.end method

.method protected setSummaryObjectStartText(Ljava/lang/String;)V
    .locals 0
    .param p1, "summaryObjectStartText"    # Ljava/lang/String;

    .line 1998
    if-nez p1, :cond_0

    .line 1999
    const-string p1, ""

    .line 2001
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 2002
    return-void
.end method

.method protected setUseClassName(Z)V
    .locals 0
    .param p1, "useClassName"    # Z

    .line 1581
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->useClassName:Z

    .line 1582
    return-void
.end method

.method protected setUseFieldNames(Z)V
    .locals 0
    .param p1, "useFieldNames"    # Z

    .line 1637
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->useFieldNames:Z

    .line 1638
    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .locals 0
    .param p1, "useIdentityHashCode"    # Z

    .line 1619
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 1620
    return-void
.end method

.method protected setUseShortClassName(Z)V
    .locals 0
    .param p1, "useShortClassName"    # Z

    .line 1601
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ToStringStyle;->useShortClassName:Z

    .line 1602
    return-void
.end method
