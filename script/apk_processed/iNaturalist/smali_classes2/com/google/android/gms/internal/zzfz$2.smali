.class final Lcom/google/android/gms/internal/zzfz$2;
.super Lcom/google/android/gms/internal/zzfz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfz;->zza(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzfz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfz<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzfz;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzfz$1;)V

    return-void
.end method


# virtual methods
.method public synthetic zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfz$2;->zzc(Landroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public zzc(Landroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfz$2;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfz$2;->zzfr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
