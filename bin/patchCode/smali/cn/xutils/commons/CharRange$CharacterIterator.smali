.class Lcn/xutils/commons/CharRange$CharacterIterator;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/CharRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private current:C

.field private hasNext:Z

.field private final range:Lcn/xutils/commons/CharRange;


# direct methods
.method private constructor <init>(Lcn/xutils/commons/CharRange;)V
    .locals 4
    .param p1, "r"    # Lcn/xutils/commons/CharRange;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->range:Lcn/xutils/commons/CharRange;

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->hasNext:Z

    .line 290
    invoke-static {p1}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetnegated(Lcn/xutils/commons/CharRange;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    invoke-static {p1}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetstart(Lcn/xutils/commons/CharRange;)C

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 292
    invoke-static {p1}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetend(Lcn/xutils/commons/CharRange;)C

    move-result v1

    const v3, 0xffff

    if-ne v1, v3, :cond_0

    .line 294
    iput-boolean v2, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetend(Lcn/xutils/commons/CharRange;)C

    move-result v1

    add-int/2addr v1, v0

    int-to-char v0, v1

    iput-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 299
    :cond_1
    iput-char v2, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 302
    :cond_2
    invoke-static {p1}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetstart(Lcn/xutils/commons/CharRange;)C

    move-result v0

    iput-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    .line 304
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcn/xutils/commons/CharRange;Lcn/xutils/commons/CharRange$CharacterIterator-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/xutils/commons/CharRange$CharacterIterator;-><init>(Lcn/xutils/commons/CharRange;)V

    return-void
.end method

.method private prepareNext()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->range:Lcn/xutils/commons/CharRange;

    invoke-static {v0}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetnegated(Lcn/xutils/commons/CharRange;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 311
    iget-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    const v2, 0xffff

    if-ne v0, v2, :cond_0

    .line 312
    iput-boolean v1, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_0

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->range:Lcn/xutils/commons/CharRange;

    invoke-static {v3}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetstart(Lcn/xutils/commons/CharRange;)C

    move-result v3

    if-ne v0, v3, :cond_2

    .line 314
    iget-object v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->range:Lcn/xutils/commons/CharRange;

    invoke-static {v0}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetend(Lcn/xutils/commons/CharRange;)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 315
    iput-boolean v1, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->range:Lcn/xutils/commons/CharRange;

    invoke-static {v0}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetend(Lcn/xutils/commons/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 320
    :cond_2
    iget-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 322
    :cond_3
    iget-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    iget-object v2, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->range:Lcn/xutils/commons/CharRange;

    invoke-static {v2}, Lcn/xutils/commons/CharRange;->-$$Nest$fgetend(Lcn/xutils/commons/CharRange;)C

    move-result v2

    if-ge v0, v2, :cond_4

    .line 323
    iget-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 325
    :cond_4
    iput-boolean v1, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->hasNext:Z

    .line 327
    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Character;
    .locals 2

    .line 346
    iget-boolean v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->hasNext:Z

    if-eqz v0, :cond_0

    .line 349
    iget-char v0, p0, Lcn/xutils/commons/CharRange$CharacterIterator;->current:C

    .line 350
    .local v0, "cur":C
    invoke-direct {p0}, Lcn/xutils/commons/CharRange$CharacterIterator;->prepareNext()V

    .line 351
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 347
    .end local v0    # "cur":C
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcn/xutils/commons/CharRange$CharacterIterator;->next()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
