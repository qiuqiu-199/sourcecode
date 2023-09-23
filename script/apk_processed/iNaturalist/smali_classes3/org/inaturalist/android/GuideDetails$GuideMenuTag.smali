.class Lorg/inaturalist/android/GuideDetails$GuideMenuTag;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Lorg/inaturalist/android/GuideDetails$GuideMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/GuideDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideMenuTag"
.end annotation


# instance fields
.field private final mCount:I

.field private final mTitle:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;

.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/GuideDetails;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 563
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p2, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->mTitle:Ljava/lang/String;

    .line 565
    iput p4, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->mCount:I

    .line 566
    iput-object p3, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 576
    iget v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->mCount:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSectionHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
