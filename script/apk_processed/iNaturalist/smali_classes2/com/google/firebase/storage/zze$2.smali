.class Lcom/google/firebase/storage/zze$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/zze;->zzacN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcoi:Lcom/google/firebase/storage/zze;

.field final synthetic zzcoj:Ljava/lang/Object;

.field final synthetic zzcok:Lcom/google/firebase/storage/StorageTask$ProvideError;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/zze;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zze$2;->zzcoi:Lcom/google/firebase/storage/zze;

    iput-object p2, p0, Lcom/google/firebase/storage/zze$2;->zzcoj:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/storage/zze$2;->zzcok:Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/storage/zze$2;->zzcoi:Lcom/google/firebase/storage/zze;

    invoke-static {v0}, Lcom/google/firebase/storage/zze;->zza(Lcom/google/firebase/storage/zze;)Lcom/google/firebase/storage/zze$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/zze$2;->zzcoj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/storage/zze$2;->zzcok:Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/storage/zze$zza;->zzk(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
