.class public Lcn/xutils/commons/CharSet;
.super Ljava/lang/Object;
.source "CharSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASCII_ALPHA:Lcn/xutils/commons/CharSet;

.field public static final ASCII_ALPHA_LOWER:Lcn/xutils/commons/CharSet;

.field public static final ASCII_ALPHA_UPPER:Lcn/xutils/commons/CharSet;

.field public static final ASCII_NUMERIC:Lcn/xutils/commons/CharSet;

.field protected static final COMMON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/CharSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcn/xutils/commons/CharSet;

.field private static final serialVersionUID:J = 0x528affa5f57a3936L


# instance fields
.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/xutils/commons/CharRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 48
    new-instance v0, Lcn/xutils/commons/CharSet;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/xutils/commons/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/CharSet;->EMPTY:Lcn/xutils/commons/CharSet;

    .line 54
    new-instance v2, Lcn/xutils/commons/CharSet;

    const-string v3, "a-zA-Z"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcn/xutils/commons/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v2, Lcn/xutils/commons/CharSet;->ASCII_ALPHA:Lcn/xutils/commons/CharSet;

    .line 60
    new-instance v4, Lcn/xutils/commons/CharSet;

    const-string v5, "a-z"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcn/xutils/commons/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v4, Lcn/xutils/commons/CharSet;->ASCII_ALPHA_LOWER:Lcn/xutils/commons/CharSet;

    .line 66
    new-instance v6, Lcn/xutils/commons/CharSet;

    const-string v7, "A-Z"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcn/xutils/commons/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v6, Lcn/xutils/commons/CharSet;->ASCII_ALPHA_UPPER:Lcn/xutils/commons/CharSet;

    .line 72
    new-instance v8, Lcn/xutils/commons/CharSet;

    const-string v9, "0-9"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcn/xutils/commons/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v8, Lcn/xutils/commons/CharSet;->ASCII_NUMERIC:Lcn/xutils/commons/CharSet;

    .line 79
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v10}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcn/xutils/commons/CharSet;->COMMON:Ljava/util/Map;

    .line 82
    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, ""

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "A-Za-z"

    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v10, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v10, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "set"    # [Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    .line 176
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/CharSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/xutils/commons/CharSet$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/CharSet;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 177
    return-void
.end method

.method public static varargs getInstance([Ljava/lang/String;)Lcn/xutils/commons/CharSet;
    .locals 2
    .param p0, "setStrs"    # [Ljava/lang/String;

    .line 156
    if-nez p0, :cond_0

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 160
    sget-object v0, Lcn/xutils/commons/CharSet;->COMMON:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/CharSet;

    .line 161
    .local v0, "common":Lcn/xutils/commons/CharSet;
    if-eqz v0, :cond_1

    .line 162
    return-object v0

    .line 165
    .end local v0    # "common":Lcn/xutils/commons/CharSet;
    :cond_1
    new-instance v0, Lcn/xutils/commons/CharSet;

    invoke-direct {v0, p0}, Lcn/xutils/commons/CharSet;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$contains$0(CLcn/xutils/commons/CharRange;)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "range"    # Lcn/xutils/commons/CharRange;

    .line 234
    invoke-virtual {p1, p0}, Lcn/xutils/commons/CharRange;->contains(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected add(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 185
    if-nez p1, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 190
    .local v0, "len":I
    const/4 v1, 0x0

    .line 191
    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 192
    sub-int v2, v0, v1

    .line 193
    .local v2, "remainder":I
    const/16 v3, 0x2d

    const/16 v4, 0x5e

    const/4 v5, 0x4

    if-lt v2, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    .line 195
    iget-object v3, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcn/xutils/commons/CharRange;->isNotIn(CC)Lcn/xutils/commons/CharRange;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 197
    :cond_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_2

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    .line 199
    iget-object v3, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcn/xutils/commons/CharRange;->isIn(CC)Lcn/xutils/commons/CharRange;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 201
    :cond_2
    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 203
    iget-object v3, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcn/xutils/commons/CharRange;->isNot(C)Lcn/xutils/commons/CharRange;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 207
    :cond_3
    iget-object v3, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcn/xutils/commons/CharRange;->is(C)Lcn/xutils/commons/CharRange;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    .line 210
    .end local v2    # "remainder":I
    :goto_1
    goto :goto_0

    .line 211
    :cond_4
    return-void
.end method

.method public contains(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 233
    iget-object v0, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcn/xutils/commons/CharSet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcn/xutils/commons/CharSet$$ExternalSyntheticLambda1;-><init>(C)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 252
    if-ne p1, p0, :cond_0

    .line 253
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_0
    instance-of v0, p1, Lcn/xutils/commons/CharSet;

    if-nez v0, :cond_1

    .line 256
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_1
    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/CharSet;

    .line 259
    .local v0, "other":Lcn/xutils/commons/CharSet;
    iget-object v1, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    iget-object v2, v0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getCharRanges()[Lcn/xutils/commons/CharRange;
    .locals 2

    .line 222
    iget-object v0, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    sget-object v1, Lcn/xutils/commons/CharRange;->EMPTY_ARRAY:[Lcn/xutils/commons/CharRange;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/CharRange;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x59

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcn/xutils/commons/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
