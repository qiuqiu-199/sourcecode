.class public Lcom/google/firebase/storage/StorageException;
.super Lcom/google/firebase/FirebaseException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageException$ErrorCode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ERROR_BUCKET_NOT_FOUND:I = -0x32d3

.field public static final ERROR_CANCELED:I = -0x32f0

.field public static final ERROR_INVALID_CHECKSUM:I = -0x32e7

.field public static final ERROR_NOT_AUTHENTICATED:I = -0x32dc

.field public static final ERROR_NOT_AUTHORIZED:I = -0x32dd

.field public static final ERROR_OBJECT_NOT_FOUND:I = -0x32d2

.field public static final ERROR_PROJECT_NOT_FOUND:I = -0x32d4

.field public static final ERROR_QUOTA_EXCEEDED:I = -0x32d5

.field public static final ERROR_RETRY_LIMIT_EXCEEDED:I = -0x32e6

.field public static final ERROR_UNKNOWN:I = -0x32c8

.field static zzcmU:Ljava/io/IOException;


# instance fields
.field private final zzPY:I

.field private final zzcmV:I

.field private zzcmW:Ljava/lang/String;

.field private zzcmX:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The operation was canceled."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/storage/StorageException;->zzcmU:Ljava/io/IOException;

    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;I)V
    .locals 3

    invoke-direct {p0}, Lcom/google/firebase/FirebaseException;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->zzqM(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzcmW:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageException;->zzcmX:Ljava/lang/Throwable;

    iput p1, p0, Lcom/google/firebase/storage/StorageException;->zzPY:I

    iput p3, p0, Lcom/google/firebase/storage/StorageException;->zzcmV:I

    const-string p1, "StorageException"

    iget-object p2, p0, Lcom/google/firebase/storage/StorageException;->zzcmW:Ljava/lang/String;

    iget p3, p0, Lcom/google/firebase/storage/StorageException;->zzPY:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iget v0, p0, Lcom/google/firebase/storage/StorageException;->zzcmV:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x34

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "StorageException has occurred.\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n Code: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " HttpResult: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/firebase/storage/StorageException;->zzcmX:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    const-string p1, "StorageException"

    iget-object p2, p0, Lcom/google/firebase/storage/StorageException;->zzcmX:Ljava/lang/Throwable;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/storage/StorageException;->zzcmX:Ljava/lang/Throwable;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->zzcg(Lcom/google/android/gms/common/api/Status;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/firebase/storage/StorageException;->zza(Ljava/lang/Throwable;I)I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-void
.end method

.method public static fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/firebase/storage/StorageException;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StorageException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public static fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object p0

    return-object p0
.end method

.method public static fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Lcom/google/firebase/storage/StorageException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/firebase/storage/StorageException;

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->zzqL(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/firebase/storage/StorageException;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/storage/StorageException;-><init>(Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method private static zza(Ljava/lang/Throwable;I)I
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/google/firebase/storage/StorageException;->zzcmU:Ljava/io/IOException;

    if-ne p0, v0, :cond_0

    const/16 p0, -0x32f0

    return p0

    :cond_0
    const/4 p0, -0x2

    if-eq p1, p0, :cond_3

    const/16 p0, 0x191

    if-eq p1, p0, :cond_2

    const/16 p0, 0x199

    if-eq p1, p0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/16 p0, -0x32c8

    return p0

    :pswitch_0
    const/16 p0, -0x32d2

    return p0

    :pswitch_1
    const/16 p0, -0x32dd

    return p0

    :cond_1
    const/16 p0, -0x32e7

    return p0

    :cond_2
    const/16 p0, -0x32dc

    return p0

    :cond_3
    const/16 p0, -0x32e6

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzcg(Lcom/google/android/gms/common/api/Status;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, -0x32f0

    return p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazA:Lcom/google/android/gms/common/api/Status;

    if-ne p0, v0, :cond_1

    const/16 p0, -0x32e6

    return p0

    :cond_1
    const/16 p0, -0x32c8

    return p0
.end method

.method private static zzqL(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static zzqM(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const-string p0, "An unknown error occurred, please check the HTTP result code and inner exception for server response."

    return-object p0

    :sswitch_0
    const-string p0, "An unknown error occurred, please check the HTTP result code and inner exception for server response."

    return-object p0

    :sswitch_1
    const-string p0, "Object does not exist at location."

    return-object p0

    :sswitch_2
    const-string p0, "Bucket does not exist."

    return-object p0

    :sswitch_3
    const-string p0, "Project does not exist."

    return-object p0

    :sswitch_4
    const-string p0, "Quota for bucket exceeded, please view quota on www.firebase.google.com/storage."

    return-object p0

    :sswitch_5
    const-string p0, "User is not authenticated, please authenticate using Firebase Authentication and try again."

    return-object p0

    :sswitch_6
    const-string p0, "User does not have permission to access this object."

    return-object p0

    :sswitch_7
    const-string p0, "The operation retry limit has been exceeded."

    return-object p0

    :sswitch_8
    const-string p0, "Object has a checksum which does not match. Please retry the operation."

    return-object p0

    :sswitch_9
    const-string p0, "The operation was cancelled."

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x32f0 -> :sswitch_9
        -0x32e7 -> :sswitch_8
        -0x32e6 -> :sswitch_7
        -0x32dd -> :sswitch_6
        -0x32dc -> :sswitch_5
        -0x32d5 -> :sswitch_4
        -0x32d4 -> :sswitch_3
        -0x32d3 -> :sswitch_2
        -0x32d2 -> :sswitch_1
        -0x32c8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzcmX:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzcmX:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageException;->zzPY:I

    return v0
.end method

.method public getHttpResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageException;->zzcmV:I

    return v0
.end method

.method public getIsRecoverableException()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x32e6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzcmW:Ljava/lang/String;

    return-object v0
.end method
