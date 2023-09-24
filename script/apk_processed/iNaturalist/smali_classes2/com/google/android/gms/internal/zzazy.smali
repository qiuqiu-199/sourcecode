.class public Lcom/google/android/gms/internal/zzazy;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "zzazy"

.field private static final zzbAG:[C


# instance fields
.field private final zzbAB:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzazy;->zzbAG:[C

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazy;->zzbAB:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/zzazy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazy;->zzbAB:[B

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzazy;->getBytes()[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazy;->zzbAB:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazy;->zzbAB:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method

.method public zznr(I)Lcom/google/android/gms/internal/zzazy;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzazy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazy;->zzbAB:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzazy;-><init>([B)V

    return-object v0
.end method
