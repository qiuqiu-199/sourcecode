.class Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TutorialActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TutorialAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/support/v7/app/AppCompatActivity;

.field private mCount:I

.field final synthetic this$0:Lorg/inaturalist/android/TutorialActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/TutorialActivity;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->this$0:Lorg/inaturalist/android/TutorialActivity;

    .line 56
    invoke-virtual {p2}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 57
    iput-object p2, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->mContext:Landroid/support/v7/app/AppCompatActivity;

    .line 59
    invoke-virtual {p1}, Lorg/inaturalist/android/TutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03000b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 60
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->mCount:I

    return-void
.end method

.method private logOnboardingEvent(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string p1, "Navigate - Onboarding - Logo"

    goto :goto_0

    :pswitch_0
    const-string p1, "Navigate - Onboarding - Login"

    goto :goto_0

    :pswitch_1
    const-string p1, "Navigate - Onboarding - Contribute"

    goto :goto_0

    :pswitch_2
    const-string p1, "Navigate - Onboarding - Learn"

    goto :goto_0

    :pswitch_3
    const-string p1, "Navigate - Onboarding - Share"

    goto :goto_0

    :pswitch_4
    const-string p1, "Navigate - Onboarding - Observe"

    .line 115
    :goto_0
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5

    .line 67
    iget-object v0, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/TutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const v2, 0x7f03000b

    .line 71
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 73
    array-length v3, v2

    if-ne p1, v3, :cond_0

    const-string v0, "final_page"

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@drawable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, p1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-virtual {v4}, Lorg/inaturalist/android/TutorialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "image"

    .line 78
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "title"

    const v3, 0x7f03000c

    .line 80
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "description"

    const v3, 0x7f03000a

    .line 81
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->logOnboardingEvent(I)V

    .line 86
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->mContext:Landroid/support/v7/app/AppCompatActivity;

    const-class v0, Lorg/inaturalist/android/TutorialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 133
    iget-object v0, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TutorialActivity;->access$000(Lorg/inaturalist/android/TutorialActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 135
    iget v0, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->mCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 137
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TutorialActivity;->access$100(Lorg/inaturalist/android/TutorialActivity;)Lcom/viewpagerindicator/CirclePageIndicator;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    goto :goto_1

    .line 139
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TutorialActivity;->access$100(Lorg/inaturalist/android/TutorialActivity;)Lcom/viewpagerindicator/CirclePageIndicator;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    :goto_1
    return-void
.end method
