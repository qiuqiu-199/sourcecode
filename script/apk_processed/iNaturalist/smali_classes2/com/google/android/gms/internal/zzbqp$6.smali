.class Lcom/google/android/gms/internal/zzbqp$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqh;)Lcom/google/android/gms/internal/zzbqn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/zzbqo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbqo;

    check-cast p2, Lcom/google/android/gms/internal/zzbqo;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbqp$6;->zza(Lcom/google/android/gms/internal/zzbqo;Lcom/google/android/gms/internal/zzbqo;)I

    move-result p1

    return p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqo;Lcom/google/android/gms/internal/zzbqo;)I
    .locals 2

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzbqo;->zzchn:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/zzbqo;->zzchn:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzbte;->zzl(JJ)I

    move-result p1

    return p1
.end method
