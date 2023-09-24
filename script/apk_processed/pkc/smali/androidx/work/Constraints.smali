.class public final Landroidx/work/Constraints;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Constraints$Builder;
    }
.end annotation


# static fields
.field public static final NONE:Landroidx/work/Constraints;


# instance fields
.field mContentUriTriggers:Landroidx/work/ContentUriTriggers;

.field mRequiredNetworkType:Landroidx/work/NetworkType;

.field mRequiresBatteryNotLow:Z

.field mRequiresCharging:Z

.field mRequiresDeviceIdle:Z

.field mRequiresStorageNotLow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    sput-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroidx/work/Constraints$Builder;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroidx/work/Constraints$Builder;->access$000(Landroidx/work/Constraints$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroidx/work/Constraints$Builder;->access$100(Landroidx/work/Constraints$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    .line 56
    invoke-static {p1}, Landroidx/work/Constraints$Builder;->access$200(Landroidx/work/Constraints$Builder;)Landroidx/work/NetworkType;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 57
    invoke-static {p1}, Landroidx/work/Constraints$Builder;->access$300(Landroidx/work/Constraints$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    .line 58
    invoke-static {p1}, Landroidx/work/Constraints$Builder;->access$400(Landroidx/work/Constraints$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 60
    invoke-static {p1}, Landroidx/work/Constraints$Builder;->access$500(Landroidx/work/Constraints$Builder;)Landroidx/work/ContentUriTriggers;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Landroidx/work/ContentUriTriggers;

    invoke-direct {p1}, Landroidx/work/ContentUriTriggers;-><init>()V

    :goto_1
    iput-object p1, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/work/Constraints$Builder;Landroidx/work/Constraints$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    check-cast p1, Landroidx/work/Constraints;

    .line 145
    iget-object v2, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    iget-object v3, p1, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    iget-boolean v3, p1, Landroidx/work/Constraints;->mRequiresCharging:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    iget-boolean v3, p1, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    iget-boolean v3, p1, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    iget-boolean v3, p1, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    iget-object p1, p1, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 150
    invoke-virtual {v2, p1}, Landroidx/work/ContentUriTriggers;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getContentUriTriggers()Landroidx/work/ContentUriTriggers;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-object v0
.end method

.method public getRequiredNetworkType()Landroidx/work/NetworkType;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    return-object v0
.end method

.method public hasContentUriTriggers()Z
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    invoke-virtual {v0}, Landroidx/work/ContentUriTriggers;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 156
    iget-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    invoke-virtual {v0}, Landroidx/work/NetworkType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 157
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 159
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 160
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 161
    iget-object v1, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    invoke-virtual {v1}, Landroidx/work/ContentUriTriggers;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public requiresBatteryNotLow()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    return v0
.end method

.method public requiresCharging()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    return v0
.end method

.method public requiresDeviceIdle()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    return v0
.end method

.method public requiresStorageNotLow()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    return v0
.end method

.method public setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V
    .locals 0

    .line 120
    iput-object p1, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-void
.end method

.method public setRequiredNetworkType(Landroidx/work/NetworkType;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    return-void
.end method

.method public setRequiresBatteryNotLow(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    return-void
.end method

.method public setRequiresCharging(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    return-void
.end method

.method public setRequiresDeviceIdle(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    return-void
.end method

.method public setRequiresStorageNotLow(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    return-void
.end method
