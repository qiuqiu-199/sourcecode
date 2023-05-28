.class Lcom/google/android/gms/internal/zzaii$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaii$zza;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/internal/zzaii$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaii$zza;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/drive/events/zzm;Lcom/google/android/gms/drive/events/zzk;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzk;->zzAQ()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/MetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance p0, Lcom/google/android/gms/internal/zzaii$zza$1;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaii$zza$1;-><init>(Lcom/google/android/gms/drive/MetadataBuffer;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzk;->zzAR()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzk;->zzAS()I

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaii$zza;->mContext:Landroid/content/Context;

    const-string v0, "EventCallback"

    const-string v1, "Don\'t know how to handle this event"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzaic;->zzp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/drive/events/zzh;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/drive/events/DriveEvent;

    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    const-string v0, "EventCallback"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected event: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaic;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    check-cast v0, Lcom/google/android/gms/drive/events/zzd;

    check-cast p1, Lcom/google/android/gms/drive/events/zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/zzd;->zza(Lcom/google/android/gms/drive/events/zzb;)V

    goto :goto_0

    :pswitch_1
    check-cast v0, Lcom/google/android/gms/drive/events/zzm;

    check-cast p1, Lcom/google/android/gms/drive/events/zzk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaii$zza;->zza(Lcom/google/android/gms/drive/events/zzm;Lcom/google/android/gms/drive/events/zzk;)V

    goto :goto_0

    :pswitch_2
    check-cast v0, Lcom/google/android/gms/drive/events/CompletionListener;

    check-cast p1, Lcom/google/android/gms/drive/events/CompletionEvent;

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/CompletionListener;->onCompletion(Lcom/google/android/gms/drive/events/CompletionEvent;)V

    goto :goto_0

    :pswitch_3
    check-cast v0, Lcom/google/android/gms/drive/events/ChangeListener;

    check-cast p1, Lcom/google/android/gms/drive/events/ChangeEvent;

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/ChangeListener;->onChange(Lcom/google/android/gms/drive/events/ChangeEvent;)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/events/zzn;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzn;->zzAT()Lcom/google/android/gms/internal/zzagm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzagk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzagk;-><init>(Lcom/google/android/gms/internal/zzagm;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/drive/events/zzh;Lcom/google/android/gms/drive/events/DriveEvent;)V
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaii$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaii$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
