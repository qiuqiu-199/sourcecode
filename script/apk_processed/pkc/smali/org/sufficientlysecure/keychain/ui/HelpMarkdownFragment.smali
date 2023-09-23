.class public Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;
.super Landroid/support/v4/app/Fragment;
.source "HelpMarkdownFragment.java"


# static fields
.field public static final ARG_MARKDOWN_RES:Ljava/lang/String; = "htmlFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 35
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static newInstance(I)Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;
    .locals 6

    move/16 v3, p0

    .line 43
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "htmlFile"

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;--->newInstance(I)Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 55
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "htmlFile"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 57
    new-instance v5, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v5, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 61
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v0, v0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->setPadding(IIII)V

    .line 65
    invoke-virtual {v5, p0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 69
    :try_start_0
    new-instance v0, Lorg/markdown4j/Markdown4jProcessor;

    invoke-direct {v0}, Lorg/markdown4j/Markdown4jProcessor;-><init>()V

    .line 70
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 69
    invoke-virtual {v0, v4}, Lorg/markdown4j/Markdown4jProcessor;->process(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 71
    new-instance v0, Lorg/sufficientlysecure/htmltextview/HtmlResImageGetter;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/htmltextview/HtmlResImageGetter;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string p0, "IOException"

    .line 73
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v5

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
