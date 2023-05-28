.class public final Lcom/google/android/gms/wearable/internal/zzs;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wearable/internal/zzs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final type:I

.field final zzbTU:I

.field final zzbTV:I

.field final zzbTW:Lcom/google/android/gms/wearable/internal/zzu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/wearable/internal/zzu;III)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTW:Lcom/google/android/gms/wearable/internal/zzu;

    iput p2, p0, Lcom/google/android/gms/wearable/internal/zzs;->type:I

    iput p3, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTU:I

    iput p4, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTV:I

    return-void
.end method

.method private static zzpr(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "OUTPUT_CLOSED"

    return-object p0

    :pswitch_1
    const-string p0, "INPUT_CLOSED"

    return-object p0

    :pswitch_2
    const-string p0, "CHANNEL_CLOSED"

    return-object p0

    :pswitch_3
    const-string p0, "CHANNEL_OPENED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzps(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CLOSE_REASON_LOCAL_CLOSE"

    return-object p0

    :pswitch_1
    const-string p0, "CLOSE_REASON_REMOTE_CLOSE"

    return-object p0

    :pswitch_2
    const-string p0, "CLOSE_REASON_DISCONNECTED"

    return-object p0

    :pswitch_3
    const-string p0, "CLOSE_REASON_NORMAL"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTW:Lcom/google/android/gms/wearable/internal/zzu;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzs;->type:I

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzs;->zzpr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTU:I

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/zzs;->zzps(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTV:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x51

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ChannelEventParcelable[, channel="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", closeReason="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appErrorCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzt;->zza(Lcom/google/android/gms/wearable/internal/zzs;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzs;->type:I

    packed-switch v0, :pswitch_data_0

    const-string p1, "ChannelEventParcelable"

    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzs;->type:I

    const/16 v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTW:Lcom/google/android/gms/wearable/internal/zzu;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTU:I

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTV:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;->onOutputClosed(Lcom/google/android/gms/wearable/Channel;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTW:Lcom/google/android/gms/wearable/internal/zzu;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTU:I

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTV:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;->onInputClosed(Lcom/google/android/gms/wearable/Channel;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTW:Lcom/google/android/gms/wearable/internal/zzu;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTU:I

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTV:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;->onChannelClosed(Lcom/google/android/gms/wearable/Channel;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzs;->zzbTW:Lcom/google/android/gms/wearable/internal/zzu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;->onChannelOpened(Lcom/google/android/gms/wearable/Channel;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
