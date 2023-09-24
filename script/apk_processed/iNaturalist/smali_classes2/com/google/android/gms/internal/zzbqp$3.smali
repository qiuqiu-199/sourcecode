.class final Lcom/google/android/gms/internal/zzbqp$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbqr<",
        "Lcom/google/android/gms/internal/zzbqo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zzas(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbqo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbqp$3;->zzc(Lcom/google/android/gms/internal/zzbqo;)Z

    move-result p1

    return p1
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbqo;)Z
    .locals 0

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzbqo;->zzbqY:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
