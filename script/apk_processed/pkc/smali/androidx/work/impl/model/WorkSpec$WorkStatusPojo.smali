.class public Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkStatusPojo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public output:Landroidx/work/Data;

.field public state:Landroidx/work/State;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_9

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 357
    :cond_1
    check-cast p1, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;

    .line 359
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->id:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->id:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 360
    :cond_3
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->state:Landroidx/work/State;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->state:Landroidx/work/State;

    if-eq v2, v3, :cond_4

    return v1

    .line 361
    :cond_4
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->output:Landroidx/work/Data;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->output:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->output:Landroidx/work/Data;

    invoke-virtual {v2, v3}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->output:Landroidx/work/Data;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 362
    :cond_6
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->tags:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->tags:Ljava/util/List;

    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_7
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->tags:Ljava/util/List;

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 367
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 368
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->state:Landroidx/work/State;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->state:Landroidx/work/State;

    invoke-virtual {v2}, Landroidx/work/State;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 369
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->output:Landroidx/work/Data;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->output:Landroidx/work/Data;

    invoke-virtual {v2}, Landroidx/work/Data;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 370
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->tags:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toWorkStatus()Landroidx/work/WorkStatus;
    .locals 5

    .line 349
    new-instance v0, Landroidx/work/WorkStatus;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->state:Landroidx/work/State;

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->output:Landroidx/work/Data;

    iget-object v4, p0, Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;->tags:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/work/WorkStatus;-><init>(Ljava/util/UUID;Landroidx/work/State;Landroidx/work/Data;Ljava/util/List;)V

    return-object v0
.end method
