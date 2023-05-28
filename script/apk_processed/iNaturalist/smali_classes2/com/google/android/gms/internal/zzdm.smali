.class public Lcom/google/android/gms/internal/zzdm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdm$zza;
    }
.end annotation


# instance fields
.field private final zzyA:Z

.field private final zzyB:I

.field private final zzyC:I

.field private final zzyo:I

.field private final zzyq:Lcom/google/android/gms/internal/zzdg;

.field private zzyy:Ljava/lang/String;

.field private zzyz:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzdm;->zzyo:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdm;->zzyA:Z

    const/16 p1, 0x40

    if-gt p2, p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/zzdm;->zzyB:I

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/zzdm;->zzyB:I

    :goto_1
    const/4 p1, 0x1

    if-ge p3, p1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/zzdm;->zzyC:I

    goto :goto_2

    :cond_2
    iput p3, p0, Lcom/google/android/gms/internal/zzdm;->zzyC:I

    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/zzdl;

    iget p2, p0, Lcom/google/android/gms/internal/zzdm;->zzyB:I

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzdl;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdm;->zzyq:Lcom/google/android/gms/internal/zzdg;

    return-void
.end method


# virtual methods
.method zza(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gt v3, v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_3

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-eq v2, p2, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x73

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0x53

    if-ne v2, v4, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eq v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_2

    :cond_1
    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    const/4 v2, 0x1

    :cond_3
    add-int/2addr v1, p1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public zza(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzdf;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdm$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdm$zza;-><init>(Lcom/google/android/gms/internal/zzdm;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdf;->zzes()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v2, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzdm;->zza(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/zzdh$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzdh$zza;-><init>()V

    const-string p2, ""

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdm;->zzyy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdm;->zzyq:Lcom/google/android/gms/internal/zzdg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdg;->zzF(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdh$zza;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v0, "Error while writing hash to byteStream"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdh$zza;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method zza(Ljava/lang/String;Ljava/util/HashSet;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_b

    aget-object v3, p1, v2

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/16 v4, 0x20

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/zzdm;->zza(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-object v4, p0, Lcom/google/android/gms/internal/zzdm;->zzyz:Ljava/lang/String;

    move-object v3, v4

    :cond_1
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzdi;->zzd(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    iget v5, p0, Lcom/google/android/gms/internal/zzdm;->zzyC:I

    if-ge v4, v5, :cond_2

    goto :goto_6

    :cond_2
    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_9

    const-string v5, ""

    move-object v6, v5

    const/4 v5, 0x0

    :goto_2
    iget v7, p0, Lcom/google/android/gms/internal/zzdm;->zzyC:I

    if-ge v5, v7, :cond_6

    add-int v7, v4, v5

    array-length v8, v3

    if-lt v7, v8, :cond_3

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    if-lez v5, :cond_4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/zzdm;->zzyo:I

    if-lt v5, v6, :cond_8

    return v0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    :goto_5
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/zzdm;->zzyo:I

    if-lt v3, v4, :cond_a

    return v0

    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    return v1
.end method
