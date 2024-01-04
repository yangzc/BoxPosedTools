.class public Lcn/xutils/commons/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/LocaleUtils$SyncAvoid;
    }
.end annotation


# static fields
.field private static final DASH:C = '-'

.field private static final UNDERSCORE:C = '_'

.field private static final cCountriesByLanguage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final cLanguagesByCountry:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/xutils/commons/LocaleUtils;->cLanguagesByCountry:Ljava/util/concurrent/ConcurrentMap;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/xutils/commons/LocaleUtils;->cCountriesByLanguage:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method

.method public static availableLocaleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcn/xutils/commons/LocaleUtils$SyncAvoid;->-$$Nest$sfgetAVAILABLE_LOCALE_LIST()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static availableLocaleList(Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 80
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/util/Locale;>;"
    invoke-static {}, Lcn/xutils/commons/LocaleUtils;->availableLocaleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static availableLocaleSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcn/xutils/commons/LocaleUtils$SyncAvoid;->-$$Nest$sfgetAVAILABLE_LOCALE_SET()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static countriesByLanguage(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "languageCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 106
    if-nez p0, :cond_0

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcn/xutils/commons/LocaleUtils;->cCountriesByLanguage:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static isAvailableLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 120
    invoke-static {}, Lcn/xutils/commons/LocaleUtils;->availableLocaleSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isISO3166CountryCode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 130
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isAllUpperCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isISO639LanguageCode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 140
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isAllLowerCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNumericAreaCode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 150
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$countriesByLanguage$0(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 110
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$countriesByLanguage$1(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "lc"    # Ljava/lang/String;

    .line 109
    new-instance v0, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Lcn/xutils/commons/LocaleUtils;->availableLocaleList(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$languagesByCountry$2(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1
    .param p0, "countryCode"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 167
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$languagesByCountry$3(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "countryCode"    # Ljava/lang/String;
    .param p1, "k"    # Ljava/lang/String;

    .line 167
    new-instance v0, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/xutils/commons/LocaleUtils;->availableLocaleList(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static languagesByCountry(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "countryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 163
    if-nez p0, :cond_0

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    sget-object v0, Lcn/xutils/commons/LocaleUtils;->cLanguagesByCountry:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static localeLookupList(Ljava/util/Locale;)Ljava/util/List;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {p0, p0}, Lcn/xutils/commons/LocaleUtils;->localeLookupList(Ljava/util/Locale;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static localeLookupList(Ljava/util/Locale;Ljava/util/Locale;)Ljava/util/List;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "defaultLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-eqz p0, :cond_2

    .line 206
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static parseLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 228
    invoke-static {p0}, Lcn/xutils/commons/LocaleUtils;->isISO639LanguageCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 232
    :cond_0
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 233
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_1
    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 235
    .local v0, "segments":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 236
    .local v1, "language":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 237
    aget-object v2, v0, v3

    .line 238
    .local v2, "country":Ljava/lang/String;
    invoke-static {v1}, Lcn/xutils/commons/LocaleUtils;->isISO639LanguageCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcn/xutils/commons/LocaleUtils;->isISO3166CountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 239
    :cond_2
    invoke-static {v2}, Lcn/xutils/commons/LocaleUtils;->isNumericAreaCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    :cond_3
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 239
    .end local v2    # "country":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 242
    :cond_5
    array-length v2, v0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    .line 243
    aget-object v2, v0, v3

    .line 244
    .restart local v2    # "country":Ljava/lang/String;
    aget-object v3, v0, v4

    .line 245
    .local v3, "variant":Ljava/lang/String;
    invoke-static {v1}, Lcn/xutils/commons/LocaleUtils;->isISO639LanguageCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 246
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Lcn/xutils/commons/LocaleUtils;->isISO3166CountryCode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Lcn/xutils/commons/LocaleUtils;->isNumericAreaCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 247
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 248
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 242
    .end local v2    # "country":Ljava/lang/String;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_7
    :goto_1
    nop

    .line 251
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid locale format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .line 297
    if-nez p0, :cond_0

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 302
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 304
    :cond_1
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "Invalid locale format: "

    if-nez v0, :cond_a

    .line 307
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 308
    .local v0, "len":I
    const/4 v3, 0x2

    if-lt v0, v3, :cond_9

    .line 311
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 312
    .local v4, "ch0":C
    const/16 v5, 0x5f

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    goto :goto_0

    .line 333
    :cond_2
    invoke-static {p0}, Lcn/xutils/commons/LocaleUtils;->parseLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 313
    :cond_3
    :goto_0
    const/4 v5, 0x3

    if-lt v0, v5, :cond_8

    .line 316
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 317
    .local v7, "ch1":C
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 318
    .local v3, "ch2":C
    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 321
    if-ne v0, v5, :cond_4

    .line 322
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 324
    :cond_4
    const/4 v8, 0x5

    if-lt v0, v8, :cond_6

    .line 327
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v4, :cond_5

    .line 330
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 328
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .end local v3    # "ch2":C
    .end local v7    # "ch1":C
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    .end local v4    # "ch0":C
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    .end local v0    # "len":I
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 262
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0
.end method
