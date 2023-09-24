.class Lorg/inaturalist/android/UserActivity$1;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserActivity;->initializeTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity$1;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 149
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$1;->this$0:Lorg/inaturalist/android/UserActivity;

    const-string v0, "my_content"

    iput-object v0, p1, Lorg/inaturalist/android/UserActivity;->mViewType:Ljava/lang/String;

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$1;->this$0:Lorg/inaturalist/android/UserActivity;

    const-string v0, "news"

    iput-object v0, p1, Lorg/inaturalist/android/UserActivity;->mViewType:Ljava/lang/String;

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$1;->this$0:Lorg/inaturalist/android/UserActivity;

    const-string v0, "following"

    iput-object v0, p1, Lorg/inaturalist/android/UserActivity;->mViewType:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
