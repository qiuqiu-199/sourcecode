.class public Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvStartFragment;
.super Landroid/support/v4/app/Fragment;
.source "ViewKeyAdvStartFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 34
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvStartFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    const/4 p0, 0x0

    const v0, 0x7f0c010c

    .line 38
    invoke-virtual {v4, v0, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090370

    .line 40
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/htmltextview/HtmlTextView;

    .line 44
    :try_start_0
    new-instance v0, Lorg/markdown4j/Markdown4jProcessor;

    invoke-direct {v0}, Lorg/markdown4j/Markdown4jProcessor;-><init>()V

    .line 45
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvStartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lorg/markdown4j/Markdown4jProcessor;->process(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lorg/sufficientlysecure/htmltextview/HtmlResImageGetter;

    invoke-direct {v1, v5}, Lorg/sufficientlysecure/htmltextview/HtmlResImageGetter;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v0, "IOException"

    .line 48
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v5, v0, p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvStartFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
