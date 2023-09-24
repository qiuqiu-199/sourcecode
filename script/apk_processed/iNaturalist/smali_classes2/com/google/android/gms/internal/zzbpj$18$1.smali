.class Lcom/google/android/gms/internal/zzbpj$18$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbos;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj$18;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzboo;Lcom/google/android/gms/internal/zzbpr$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceW:Lcom/google/android/gms/internal/zzbpr$zza;

.field final synthetic zzceX:Lcom/google/android/gms/internal/zzbpj$18;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj$18;Lcom/google/android/gms/internal/zzbpr$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$18$1;->zzceX:Lcom/google/android/gms/internal/zzbpj$18;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$18$1;->zzceW:Lcom/google/android/gms/internal/zzbpr$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$18$1;->zzceW:Lcom/google/android/gms/internal/zzbpr$zza;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzbpr$zza;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$18$1;->zzceX:Lcom/google/android/gms/internal/zzbpj$18;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzbpj$18;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;)V

    return-void
.end method
