.class final Lcn/xutils/commons/CharRange;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/CharRange$CharacterIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final EMPTY_ARRAY:[Lcn/xutils/commons/CharRange;

.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final end:C

.field private transient iToString:Ljava/lang/String;

.field private final negated:Z

.field private final start:C


# direct methods
.method static bridge synthetic -$$Nest$fgetend(Lcn/xutils/commons/CharRange;)C
    .locals 0

    iget-char p0, p0, Lcn/xutils/commons/CharRange;->end:C

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnegated(Lcn/xutils/commons/CharRange;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/xutils/commons/CharRange;->negated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstart(Lcn/xutils/commons/CharRange;)C
    .locals 0

    iget-char p0, p0, Lcn/xutils/commons/CharRange;->start:C

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/xutils/commons/CharRange;

    sput-object v0, Lcn/xutils/commons/CharRange;->EMPTY_ARRAY:[Lcn/xutils/commons/CharRange;

    return-void
.end method

.method private constructor <init>(CCZ)V
    .locals 1
    .param p1, "start"    # C
    .param p2, "end"    # C
    .param p3, "negated"    # Z

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-le p1, p2, :cond_0

    .line 74
    move v0, p1

    .line 75
    .local v0, "temp":C
    move p1, p2

    .line 76
    move p2, v0

    .line 79
    .end local v0    # "temp":C
    :cond_0
    iput-char p1, p0, Lcn/xutils/commons/CharRange;->start:C

    .line 80
    iput-char p2, p0, Lcn/xutils/commons/CharRange;->end:C

    .line 81
    iput-boolean p3, p0, Lcn/xutils/commons/CharRange;->negated:Z

    .line 82
    return-void
.end method

.method public static is(C)Lcn/xutils/commons/CharRange;
    .locals 2
    .param p0, "ch"    # C

    .line 92
    new-instance v0, Lcn/xutils/commons/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcn/xutils/commons/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isIn(CC)Lcn/xutils/commons/CharRange;
    .locals 2
    .param p0, "start"    # C
    .param p1, "end"    # C

    .line 121
    new-instance v0, Lcn/xutils/commons/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/commons/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNot(C)Lcn/xutils/commons/CharRange;
    .locals 2
    .param p0, "ch"    # C

    .line 106
    new-instance v0, Lcn/xutils/commons/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcn/xutils/commons/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNotIn(CC)Lcn/xutils/commons/CharRange;
    .locals 2
    .param p0, "start"    # C
    .param p1, "end"    # C

    .line 139
    new-instance v0, Lcn/xutils/commons/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/commons/CharRange;-><init>(CCZ)V

    return-object v0
.end method


# virtual methods
.method public contains(C)Z
    .locals 4
    .param p1, "ch"    # C

    .line 181
    iget-char v0, p0, Lcn/xutils/commons/CharRange;->start:C

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    iget-char v0, p0, Lcn/xutils/commons/CharRange;->end:C

    if-gt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcn/xutils/commons/CharRange;->negated:Z

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public contains(Lcn/xutils/commons/CharRange;)Z
    .locals 4
    .param p1, "range"    # Lcn/xutils/commons/CharRange;

    .line 193
    const-string v0, "range"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    iget-boolean v0, p0, Lcn/xutils/commons/CharRange;->negated:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 195
    iget-boolean v0, p1, Lcn/xutils/commons/CharRange;->negated:Z

    if-eqz v0, :cond_1

    .line 196
    iget-char v0, p0, Lcn/xutils/commons/CharRange;->start:C

    iget-char v3, p1, Lcn/xutils/commons/CharRange;->start:C

    if-lt v0, v3, :cond_0

    iget-char v0, p0, Lcn/xutils/commons/CharRange;->end:C

    iget-char v3, p1, Lcn/xutils/commons/CharRange;->end:C

    if-gt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 198
    :cond_1
    iget-char v0, p1, Lcn/xutils/commons/CharRange;->end:C

    iget-char v3, p0, Lcn/xutils/commons/CharRange;->start:C

    if-lt v0, v3, :cond_3

    iget-char v0, p1, Lcn/xutils/commons/CharRange;->start:C

    iget-char v3, p0, Lcn/xutils/commons/CharRange;->end:C

    if-le v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1

    .line 200
    :cond_4
    iget-boolean v0, p1, Lcn/xutils/commons/CharRange;->negated:Z

    if-eqz v0, :cond_6

    .line 201
    iget-char v0, p0, Lcn/xutils/commons/CharRange;->start:C

    if-nez v0, :cond_5

    iget-char v0, p0, Lcn/xutils/commons/CharRange;->end:C

    const v3, 0xffff

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    .line 203
    :cond_6
    iget-char v0, p0, Lcn/xutils/commons/CharRange;->start:C

    iget-char v3, p1, Lcn/xutils/commons/CharRange;->start:C

    if-gt v0, v3, :cond_7

    iget-char v0, p0, Lcn/xutils/commons/CharRange;->end:C

    iget-char v3, p1, Lcn/xutils/commons/CharRange;->end:C

    if-lt v0, v3, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 217
    return v0

    .line 219
    :cond_0
    instance-of v1, p1, Lcn/xutils/commons/CharRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 220
    return v2

    .line 222
    :cond_1
    move-object v1, p1

    check-cast v1, Lcn/xutils/commons/CharRange;

    .line 223
    .local v1, "other":Lcn/xutils/commons/CharRange;
    iget-char v3, p0, Lcn/xutils/commons/CharRange;->start:C

    iget-char v4, v1, Lcn/xutils/commons/CharRange;->start:C

    if-ne v3, v4, :cond_2

    iget-char v3, p0, Lcn/xutils/commons/CharRange;->end:C

    iget-char v4, v1, Lcn/xutils/commons/CharRange;->end:C

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcn/xutils/commons/CharRange;->negated:Z

    iget-boolean v4, v1, Lcn/xutils/commons/CharRange;->negated:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEnd()C
    .locals 1

    .line 158
    iget-char v0, p0, Lcn/xutils/commons/CharRange;->end:C

    return v0
.end method

.method public getStart()C
    .locals 1

    .line 149
    iget-char v0, p0, Lcn/xutils/commons/CharRange;->start:C

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 233
    iget-char v0, p0, Lcn/xutils/commons/CharRange;->start:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lcn/xutils/commons/CharRange;->end:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcn/xutils/commons/CharRange;->negated:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegated()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcn/xutils/commons/CharRange;->negated:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Lcn/xutils/commons/CharRange$CharacterIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/xutils/commons/CharRange$CharacterIterator;-><init>(Lcn/xutils/commons/CharRange;Lcn/xutils/commons/CharRange$CharacterIterator-IA;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 243
    iget-object v0, p0, Lcn/xutils/commons/CharRange;->iToString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcn/xutils/commons/CharRange;->isNegated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    iget-char v1, p0, Lcn/xutils/commons/CharRange;->start:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    iget-char v1, p0, Lcn/xutils/commons/CharRange;->start:C

    iget-char v2, p0, Lcn/xutils/commons/CharRange;->end:C

    if-eq v1, v2, :cond_1

    .line 250
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    iget-char v1, p0, Lcn/xutils/commons/CharRange;->end:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/xutils/commons/CharRange;->iToString:Ljava/lang/String;

    .line 255
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v0, p0, Lcn/xutils/commons/CharRange;->iToString:Ljava/lang/String;

    return-object v0
.end method
