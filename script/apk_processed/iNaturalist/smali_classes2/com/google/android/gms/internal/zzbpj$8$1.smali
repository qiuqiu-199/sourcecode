.class Lcom/google/android/gms/internal/zzbpj$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj$8;->zzar(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceK:Lcom/google/firebase/database/DataSnapshot;

.field final synthetic zzceN:Lcom/google/android/gms/internal/zzbpj$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj$8;Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$8$1;->zzceN:Lcom/google/android/gms/internal/zzbpj$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$8$1;->zzceK:Lcom/google/firebase/database/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8$1;->zzceN:Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzi(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$8$1;->zzceK:Lcom/google/firebase/database/DataSnapshot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method
