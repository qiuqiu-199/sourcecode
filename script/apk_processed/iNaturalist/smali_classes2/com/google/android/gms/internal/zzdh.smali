.class public Lcom/google/android/gms/internal/zzdh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdh$zza;
    }
.end annotation


# instance fields
.field private final zzyn:I

.field private final zzyo:I

.field private final zzyp:I

.field private final zzyq:Lcom/google/android/gms/internal/zzdg;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdh;->zzyq:Lcom/google/android/gms/internal/zzdg;

    iput p1, p0, Lcom/google/android/gms/internal/zzdh;->zzyo:I

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/zzdh;->zzyn:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzdh;->zzyp:I

    return-void
.end method


# virtual methods
.method zzG(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdh;->zzeu()Lcom/google/android/gms/internal/zzdh$zza;

    move-result-object v0

    new-instance v1, Ljava/util/PriorityQueue;

    iget v2, p0, Lcom/google/android/gms/internal/zzdh;->zzyo:I

    new-instance v3, Lcom/google/android/gms/internal/zzdh$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzdh$1;-><init>(Lcom/google/android/gms/internal/zzdh;)V

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/zzdi;->zzI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/google/android/gms/internal/zzdh;->zzyo:I

    iget v5, p0, Lcom/google/android/gms/internal/zzdh;->zzyn:I

    invoke-static {v3, v4, v5, v1}, Lcom/google/android/gms/internal/zzdk;->zza([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdk$zza;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzdh;->zzyq:Lcom/google/android/gms/internal/zzdg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdk$zza;->zzyu:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzdg;->zzF(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdh$zza;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "Error while writing hash to byteStream"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdh$zza;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zza(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdh;->zzG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method zzeu()Lcom/google/android/gms/internal/zzdh$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdh$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdh$zza;-><init>()V

    return-object v0
.end method
