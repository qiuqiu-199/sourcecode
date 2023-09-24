.class public final Landroidx/work/Constraints$Builder;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContentUriTriggers:Landroidx/work/ContentUriTriggers;

.field private mRequiredNetworkType:Landroidx/work/NetworkType;

.field private mRequiresBatteryNotLow:Z

.field private mRequiresCharging:Z

.field private mRequiresDeviceIdle:Z

.field private mRequiresStorageNotLow:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->mRequiresCharging:Z

    .line 170
    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    .line 171
    sget-object v1, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v1, p0, Landroidx/work/Constraints$Builder;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 172
    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    .line 173
    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    .line 174
    new-instance v0, Landroidx/work/ContentUriTriggers;

    invoke-direct {v0}, Landroidx/work/ContentUriTriggers;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-void
.end method

.method static synthetic access$000(Landroidx/work/Constraints$Builder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Landroidx/work/Constraints$Builder;->mRequiresCharging:Z

    return p0
.end method

.method static synthetic access$100(Landroidx/work/Constraints$Builder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Landroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    return p0
.end method

.method static synthetic access$200(Landroidx/work/Constraints$Builder;)Landroidx/work/NetworkType;
    .locals 0

    .line 168
    iget-object p0, p0, Landroidx/work/Constraints$Builder;->mRequiredNetworkType:Landroidx/work/NetworkType;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/work/Constraints$Builder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Landroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    return p0
.end method

.method static synthetic access$400(Landroidx/work/Constraints$Builder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Landroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    return p0
.end method

.method static synthetic access$500(Landroidx/work/Constraints$Builder;)Landroidx/work/ContentUriTriggers;
    .locals 0

    .line 168
    iget-object p0, p0, Landroidx/work/Constraints$Builder;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/work/Constraints;
    .locals 2

    .line 260
    new-instance v0, Landroidx/work/Constraints;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints$Builder;Landroidx/work/Constraints$1;)V

    return-object v0
.end method

.method public setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;
    .locals 0

    .line 209
    iput-object p1, p0, Landroidx/work/Constraints$Builder;->mRequiredNetworkType:Landroidx/work/NetworkType;

    return-object p0
.end method

.method public setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    .line 222
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    .line 197
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    return-object p0
.end method
