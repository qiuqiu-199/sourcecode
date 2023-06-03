.class Lcom/google/android/gms/tagmanager/zzcx$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbjf$zzc;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzu$zza;Lcom/google/android/gms/tagmanager/zzu$zza;Lcom/google/android/gms/tagmanager/zzaj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzm$zza<",
        "Lcom/google/android/gms/internal/zzbjf$zza;",
        "Lcom/google/android/gms/tagmanager/zzce<",
        "Lcom/google/android/gms/internal/zzak$zza;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbjf$zza;

    check-cast p2, Lcom/google/android/gms/tagmanager/zzce;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcx$1;->zza(Lcom/google/android/gms/internal/zzbjf$zza;Lcom/google/android/gms/tagmanager/zzce;)I

    move-result p1

    return p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbjf$zza;Lcom/google/android/gms/tagmanager/zzce;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbjf$zza;",
            "Lcom/google/android/gms/tagmanager/zzce<",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/zzce;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzak$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzak$zza;->zzaeS()I

    move-result p1

    return p1
.end method
