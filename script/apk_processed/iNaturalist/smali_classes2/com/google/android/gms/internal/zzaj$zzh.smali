.class public final Lcom/google/android/gms/internal/zzaj$zzh;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzaj$zzh;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzle:Lcom/google/android/gms/internal/zzbxo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbxo<",
            "Lcom/google/android/gms/internal/zzak$zza;",
            "Lcom/google/android/gms/internal/zzaj$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlf:[Lcom/google/android/gms/internal/zzaj$zzh;


# instance fields
.field public zzlg:[I

.field public zzlh:[I

.field public zzli:[I

.field public zzlj:I

.field public zzlk:[I

.field public zzll:I

.field public zzlm:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/zzaj$zzh;

    const/16 v1, 0xb

    const-wide/16 v2, 0x32a

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxo;->zza(ILjava/lang/Class;J)Lcom/google/android/gms/internal/zzbxo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaj$zzh;->zzle:Lcom/google/android/gms/internal/zzbxo;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaj$zzh;

    sput-object v0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlf:[Lcom/google/android/gms/internal/zzaj$zzh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaj$zzh;->zzH()Lcom/google/android/gms/internal/zzaj$zzh;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzaj$zzh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzaj$zzh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlj:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzlj:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzll:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzll:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlm:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzlm:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_c

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlj:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzll:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlm:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public zzH()Lcom/google/android/gms/internal/zzaj$zzh;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuW:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuW:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuW:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlj:I

    sget-object v1, Lcom/google/android/gms/internal/zzbxw;->zzcuW:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzll:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlm:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlj:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlj:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzll:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzll:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlm:I

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlm:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaj$zzh;->zzu(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzaj$zzh;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    array-length v4, v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlj:I

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    iget v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlj:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    array-length v1, v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    array-length v3, v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzll:I

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzll:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlm:I

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlm:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public zzu(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzaj$zzh;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlm:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzll:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    array-length v2, v2

    :goto_2
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    array-length v1, v3

    if-ge v2, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iput-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    goto/16 :goto_13

    :sswitch_3
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlk:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlj:I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    array-length v2, v2

    :goto_7
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v1, v3

    if-ge v2, v1, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    iput-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    goto/16 :goto_13

    :sswitch_6
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_9

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzli:[I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_f
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_c

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    array-length v2, v2

    :goto_c
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_11

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_d
    array-length v1, v3

    if-ge v2, v1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_12
    iput-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    goto/16 :goto_13

    :sswitch_8
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_e

    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    array-length v2, v2

    :goto_e
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_14

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_f
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlh:[I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_16
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto :goto_11

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    array-length v2, v2

    :goto_11
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_18

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    :goto_12
    array-length v1, v3

    if-ge v2, v1, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_19
    iput-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    :goto_13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzrb(I)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_14

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    array-length v2, v2

    :goto_14
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_1b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    :goto_15
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzh;->zzlg:[I

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0xa -> :sswitch_9
        0x10 -> :sswitch_8
        0x12 -> :sswitch_7
        0x18 -> :sswitch_6
        0x1a -> :sswitch_5
        0x20 -> :sswitch_4
        0x28 -> :sswitch_3
        0x2a -> :sswitch_2
        0x30 -> :sswitch_1
        0x38 -> :sswitch_0
    .end sparse-switch
.end method
