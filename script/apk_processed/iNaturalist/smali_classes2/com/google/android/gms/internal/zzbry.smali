.class public Lcom/google/android/gms/internal/zzbry;
.super Lcom/google/android/gms/internal/zzbrw;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzcjs:Lcom/google/android/gms/internal/zzbry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbry;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbry;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbry;->zzcjs:Lcom/google/android/gms/internal/zzbry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrw;-><init>()V

    return-void
.end method

.method public static zzabg()Lcom/google/android/gms/internal/zzbry;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbry;->zzcjs:Lcom/google/android/gms/internal/zzbry;

    return-object v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbsb;

    check-cast p2, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbry;->zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzbry;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyIndex"

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbrq;->zzi(Lcom/google/android/gms/internal/zzbrq;)I

    move-result p1

    return p1
.end method

.method public zzabb()Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbsb;->zzabi()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    return-object v0
.end method

.method public zzabc()Ljava/lang/String;
    .locals 1

    const-string v0, ".key"

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/zzbsb;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-object p1
.end method

.method public zzm(Lcom/google/android/gms/internal/zzbsc;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
