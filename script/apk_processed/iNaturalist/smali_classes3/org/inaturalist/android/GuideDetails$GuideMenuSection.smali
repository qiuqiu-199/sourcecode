.class Lorg/inaturalist/android/GuideDetails$GuideMenuSection;
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
    name = "GuideMenuSection"
.end annotation


# instance fields
.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/GuideDetails;Ljava/lang/String;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuSection;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p2, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuSection;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuSection;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isSectionHeader()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
